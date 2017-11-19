API_JsDom = require '../src/API-JsDom'

describe.only 'API-JsDom',->

  api_JsDom = null

  beforeEach ->
    api_JsDom = new API_JsDom()

  after ->

  @.timeout 5000

  it 'constructor',->
    using api_JsDom, ->
      @.constructor.name.assert_Is 'API_JsDom'



  it 'open - google', (done)->
    api_JsDom.open 'https://www.google.co.uk', ($, window)->
      window.document.body.outerHTML            .assert_Contains 'b class="gb1">Search</b>'
      done()


  it 'open - photobox (no external scripts)', (done)->
    using api_JsDom, ->
      @.features =
        FetchExternalResources  : false
        ProcessExternalResources: false
      @.open 'https://www.photobox.co.uk', ($, window)->
        window.login.outerHTML                  .assert_Contains '<div id="login" class="article login-article" '
        done()


  it 'open - photobox, check jQuery and direct dom access', (done)->
    api_JsDom.open 'https://www.photobox.co.uk', ($, window)->
      window.$.fn.jquery                        .assert_Is '2.2.4'
      window.login.outerHTML                    .assert_Contains '<div id="login" class="article login-article" '
      $('a').eq(0).outerHTML()                  .assert_Contains '<a class="site-nav__home" href="/" title="Photobox">'
      window.window.FLEXI.utils.mobileBreakpoint.assert_Is 1024
      done()


