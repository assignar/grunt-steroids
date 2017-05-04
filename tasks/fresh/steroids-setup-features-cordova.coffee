features = require '../../lib/features'

module.exports = (grunt) ->

  grunt.loadNpmTasks "grunt-extend-config"

  # KLUDGE: toggling AutoHideSplashScreen is disabled in supersonic until native gets a smarter autohide
  grunt.extendConfig {
    'steroids-setup-features-cordova':
      dist:
        src: 'dist/**/*.html'
  }
  grunt.registerMultiTask 'steroids-setup-features-cordova', ->
    count = 0
    @files.forEach (pair) ->
      pair.src.forEach (src) ->
        grunt.file.copy src, src,
          process: (contents) ->
            contents.replace /"\/components/g, """\"../../components"""
        count++
    @files.forEach (pair) ->
      pair.src.forEach (src) ->
        grunt.file.copy src, src,
          process: (contents) ->
            contents.replace /"\/icons/g, '"../../icons'
        count++
    grunt.log.ok "Processed #{count} files"
