(require "require-dir") "./gulp/task"

gulp = require "gulp"
suddenDeath = require "./gulp/lib/sudden-death"

gulp.task "default", ->
  console.log ""
  console.log suddenDeath "do", .5
  console.log ""
  console.log suddenDeath "read", .9
  console.log ""
  console.log suddenDeath "readme", 1
  console.log ""
