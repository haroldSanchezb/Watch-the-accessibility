gulp = require 'gulp'
del = require 'del'
fs = require 'fs'
rename = require 'gulp-rename'
run = require 'gulp-run'
access = require 'gulp-accessibility'

gulp.task 'test', ->
  gulp.src './templates/**/*.html'
  .pipe access(
    accessibilityLevel: 'WCAG2AA'
    reportType: 'json'
    reportLocation: 'reports'
  )

gulp.task 'shell', ->
  run('git status').exec()
  .pipe(gulp.dest('./templates'))
  .pipe(rename('file.txt'))
  .pipe(gulp.dest('./'))

gulp.task 'copy', ->
  srcFiles = []
  fileContent = fs.readFileSync './file.txt', 'utf8'
  fileArray = fileContent.split '\n'

  fileArray.forEach (element) ->
    if element.search('.tt') isnt -1 or element.search('.tpl') isnt -1
      srcFiles.push (element.replace('modified:', '')).trim()

  gulp.src(srcFiles)
  .pipe(rename(
    extname: '.html'
  ))
  .pipe(gulp.dest('./templates'))

gulp.task 'delete', (cb) -> del(['./templates/*'], cb)

gulp.task 'watch', -> gulp.watch('./originals/**/*', ['copy', 'test'])