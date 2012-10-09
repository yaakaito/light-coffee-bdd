module.exports = function(grunt) {

  grunt.loadNpmTasks('grunt-coffee');
  grunt.loadNpmTasks('grunt-jasmine-task');

  grunt.initConfig({
    coffee : {
      app : {
        src : [
          'lib/*.coffee'
        ]
        , dest : 'build/'
      }

      , spec : {
        src : [
          'specs/*.coffee'
        ]
        , dest : 'spec_runner/spec/'
      }
      
      , runner : {
        src : [
          'spec_runner/main.coffee'
        ]
        , dest : 'spec_runner/' 
      }
    }
    , jasmine: {
      all : {
        src : ['spec_runner/index.html']
        , tasks : 'coffee:all'
      }
    }
    , watch : {
      files : ['specs/*.coffee',
               'lib/*.coffee']
      , tasks : 'jasmine'
    }
  });
}
;
