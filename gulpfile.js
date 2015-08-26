var gulp = require('gulp'),
		del = require('del');
		rename = require('gulp-rename'),
		shell = require('gulp-shell'),
		access = require('gulp-accessibility'),

gulp.task('test', function() {
  return gulp.src('./templates/**/*.html')
    .pipe(access({accessibilityLevel: 'WCAG2AA', reportType: 'json', reportLocation : 'reports'}));
});

gulp.task('copy', function() {
  return gulp.src('./originals/**/*.{tt,tpl}')
  	.pipe(rename({extname: '.html'}))
  	.pipe(gulp.dest('./templates'));
});

gulp.task('delete', function(cb) {
    del(['./templates'], cb)
});

gulp.task('watch', function() {
	gulp.watch('./originals/**/*', ['copy', 'test']);
});
