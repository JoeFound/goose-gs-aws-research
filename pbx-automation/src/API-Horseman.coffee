require 'fluentnode'

class API_Horseman
  constructor: ->
    @.scrapConf =
      'timeout'        : 90000
      'cookiesFile'    : '/tmp/photobox'
      'loadImages'     : false
      'ignoreSSLErrors': true
      'webSecurity'    : false

module.exports = API_Horseman