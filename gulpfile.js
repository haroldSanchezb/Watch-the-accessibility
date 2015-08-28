var gulp = require('gulp'),
		del = require('del'),
		fs = require("fs"),
		rename = require('gulp-rename'),
		run = require('gulp-run'),
		access = require('gulp-accessibility');

gulp.task('test', function() {
  return gulp.src('./templates/**/*.html')
    .pipe(access({accessibilityLevel: 'WCAG2AA', reportType: 'json', reportLocation : 'reports'}));
});

gulp.task('shell', function () {
	return run('git status').exec()
		.pipe(gulp.dest('./templates')) // aqui se pondria svn st
		.pipe(rename('file.txt'))
    .pipe(gulp.dest('./'));
});


gulp.task('copy', function () {
	var srcFiles = [], 
			fileContent = fs.readFileSync("./file.txt", "utf8"),
			fileArray = fileContent.split("\n");
	fileArray.forEach(function (element) {
		if (element.search(".tt")  !== -1 || element.search(".tpl")  !== -1) {
			srcFiles.push((element.replace('modified:', '')).trim()); // aqui se cambia a M
		}
	});

	return gulp.src(srcFiles)
  	.pipe(rename({extname: '.html'}))
  	.pipe(gulp.dest('./templates'));
});

gulp.task('delete', function(cb) {
    del(['./templates/*'], cb)
});

gulp.task('watch', function() {
	gulp.watch('./originals/**/*', ['copy', 'test']);
});
