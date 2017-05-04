
module.exports = (grunt)->

  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-extend-config"

  grunt.registerTask "steroids-copy-dist", "Copy files from dist/ to www/ (except for .scss and .coffee) (for SPA projects)", ->

    grunt.extendConfig
      copy:
        dist:
          expand:true
          cwd: 'dist/'
          src: ['**/*.*', '!**/*.coffee', '!**/*.scss']
          dest: 'cordova/www/'

    grunt.task.run "copy:dist"