# All views belongs to jQuery, all of them are already DOM.
class View extends jQuery

  # Basically jQuery Selector. But can be used as template.
  template: (data)-> "<div>#{data}</div>"

  # Basically jQuery initialization.
  constructor: (data={}, template=@template)->
    super
    @self = $ $.proxy(template, this) data
    @init.call this, @self

    # bind all methods to element
    for method, func of this
      @[method] = $.proxy func, @self if typeof func is 'function'

window.View = View
# fin.
