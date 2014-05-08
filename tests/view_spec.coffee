{expect} = chai

describe "View", ->

  beforeEach ->
    $(document.body).append $("<div id='hello'>world</div>")

  afterEach ->
    $("#hello").remove()

  mock = $("<div>hello world</div>")

  it "should be jQuery object", ->
    class Test extends View
      template: -> "<div>hello world</div>"
      constructor: ->
        super
        @html "hello world"

    test = new Test()
    expect(test.html()).to.equal mock.html()
    expect(test.html()).to.equal "hello world"

  it "should be working with selectors", ->
    class Test extends View
      template: -> "#hello"

    test = new Test()
    expect(test.html()).to.equal "world"
    expect(test.attr('id')).to.equal "hello"
