module.exports = (grunt) ->
  grunt.registerTask "steroids-make-fresh-cordova", "Create the dist/ folder that is copied to the device.", ->
    grunt.loadTasks("#{__dirname}/fresh")
    grunt.task.run [
      "steroids-check-project"
      "steroids-clean-dist"
      "steroids-copy-www"
      "steroids-compile-coffee"
      "steroids-copy-components"
      "steroids-configure"
      "steroids-compile-modules-cordova"
      "steroids-compile-sass"
      "steroids-copy-css"
      "steroids-setup-features-cordova"
    ]
