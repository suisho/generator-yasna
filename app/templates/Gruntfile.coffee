module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.initConfig
    bower :
      install :
        options :
          install : true
          cleanTargetDir : true
          cleanBowerDir : false
          layout : 'byType'
    watch :
      jade:
        files: 'jade/**/*.jade'
        tasks: ["jade"]
 
  grunt.registerTask 'default', ['jade', 'watch']