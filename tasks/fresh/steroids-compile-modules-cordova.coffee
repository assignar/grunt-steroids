module.exports = (grunt) ->

  grunt.loadTasks("#{__dirname}/modules")

  grunt.registerTask "steroids-compile-modules-cordova", "Compile modules in app/ to device-ready files", [
    'steroids-module-copy-assets'
    'steroids-module-compile-views-cordova'
    'steroids-module-compile-scripts'
    'steroids-module-copy-default-native-styles'
    'steroids-module-compile-default-native-styles'
  ]
