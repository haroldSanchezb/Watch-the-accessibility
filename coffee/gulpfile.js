var access, del, fs, gulp, rename, run;

gulp = require('gulp');

del = require('del');

fs = require('fs');

rename = require('gulp-rename');

run = require('gulp-run');

access = require('gulp-accessibility');

gulp.task('test', function() {
  return gulp.src('./templates/**/*.html').pipe(access({
    accessibilityLevel: 'WCAG2AA',
    reportType: 'json',
    reportLocation: 'reports'
  }));
});

gulp.task('shell', function() {
  return run('git status').exec().pipe(gulp.dest('./templates')).pipe(rename('file.txt')).pipe(gulp.dest('./'));
});

gulp.task('copy', function() {
  var fileArray, fileContent, srcFiles;
  srcFiles = [];
  fileContent = fs.readFileSync('./file.txt', 'utf8');
  fileArray = fileContent.split('\n');
  fileArray.forEach(function(element) {
    if (element.search('.tt') !== -1 || element.search('.tpl') !== -1) {
      return srcFiles.push((element.replace('modified:', '')).trim());
    }
  });
  return gulp.src(srcFiles).pipe(rename({
    extname: '.html'
  })).pipe(gulp.dest('./templates'));
});

gulp.task('delete', function(cb) {
  return del(['./templates/*'], cb);
});

gulp.task('watch', function() {
  return gulp.watch('./originals/**/*', ['copy', 'test']);
});
