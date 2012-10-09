config =
  paths :
    'jasmine':       'lib/jasmine-1.2.0/jasmine'
    'jasmine.html':   'lib/jasmine-1.2.0/jasmine-html'
    'jasmine.helper': 'lib/jasmine-1.2.0/jasmine-helper'
  shim :
    'jasmine' :
      'exports' : 'jasmine'
    'jasmine.html':   ['jasmine']
    'jasmine.helper': ['jasmine']

require.config config

require ['jasmine', 'jasmine.html', 'jasmine.helper', 'spec/sample_spec'], (jasmine) ->
  jasmineEnv = jasmine.getEnv()
  jasmineEnv.updateInterval = 1000
  
  htmlReporter = new jasmine.HtmlReporter()
  
  jasmineEnv.addReporter htmlReporter

  jasmineEnv.specFilter = (spec) ->
    htmlReporter.specFilter spec

  jasmineEnv.execute()

