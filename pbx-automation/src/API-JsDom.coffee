require 'fluentnode'

jsdom  = require("jsdom/lib/old-api.js");

class API_JsDom
  constructor: ->
    @.features =
      FetchExternalResources  : ["script"]
      ProcessExternalResources: ["script"]

  open: (url,callback)=>
    config =
      url: url
      features : @.features
      created: ()=> @.on_Created?()
      onload : ()=> @.on_Load?()
      done   : (err, window)=>
        throw err if err
        @.window = window
        @.$      = window.$
        callback @.$, @.window
    jsdom.env config

module.exports = API_JsDom


