
module.exports = (grunt)->

  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-extend-config"

  grunt.registerTask "steroids-clean-www", "Clean cordova/www/", ->

    grunt.extendConfig
      clean:
        # Clean cordova/www/ folder (delete and create again)
        www:
          ["cordova/www/"]

    grunt.task.run "clean:www"