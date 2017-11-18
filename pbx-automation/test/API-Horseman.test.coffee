
API_Horseman = require '../src/API-Horseman'

describe 'API-Horseman',->

  api_Horseman = null
  beforeEach ->
    api_Horseman = new API_Horseman()

  it 'constructor',->
    using api_Horseman, ->
      @.constructor.name.assert_Is 'API_Horseman'
      @.scrapConf.assert_Is
        'timeout'        : 90000
        'cookiesFile'    : '/tmp/photobox'
        'loadImages'     : false
        'ignoreSSLErrors': true
        'webSecurity'    : false

