# All views belongs to jQuery, all of them are already DOM.
class View extends jQuery

  # Basically jQuery Selector. But can be used as template.
  template: (data)-> "<div>#{data}</div>"

  # Just an helper. Delete if you don't like :P
  bind: (method)-> method.bind @self

  # Basically jQuery initialization.
  constructor: (data)->
    super
    @init.call this, @template(data)
    @self = $ this

window.View = View
# fin.
