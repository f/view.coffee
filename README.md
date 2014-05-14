# View.coffee

**Dead Simple, Vanilla-ish** Client-Side Framework based on *jQuery*

## Manage Views like a boss.

Are you using lots of frameworks but are they **overkill**? You just like doing something simply
with **jQuery** but it makes your code becomes too ugly?

Then maybe you should try **View.coffee**.

  - Use *all* of the jQuery instance methods in your View class, because it's jQuery instance.
  - Manage the events. Improve readability.
  - Seperate your View logic. Use it like MV*.
  - Use it another libraries, there is no conflict.
  - And the best; too simple. (Source code is only **10 lines of CoffeeScript code**)

## Usage

```coffeescript
class Search extends View

  template: -> "#search"

  constructor: ->
    super
    @on "submit", @doSearch

  doSearch: (e)->
    searchValue = @find("#query").val()
    # do the job...
    console.log "search #{searchValue}"
    e.preventDefault()

# View communication
class MyApp extends View

  # Write the selector
  template: -> "#app"

  constructor: ->
    super
    search = new Search()
    search.on "submit", (e)=>
      console.log "another binding"
      e.preventDefault()

app = new MyApp()
```

## Generating Views

```coffeescript
class ModelView extends View
  template: ({name})-> """
  <div>
    Hello #{name}
  </div>
  """
  constructor: (data)->
    super data
    @text @text().toUpperCase()

modelView = new ModelView name: "f"
```

## Custom Views

```coffeescript
class Item extends View
  constructor: ->

item = new Item title: "hello", (data)=> """
  <div>
    Hello #{data.title}
  </div>
  """
```

---

Developed at [@webBoxio][1] with <3, inspired by GitHub's Space-Pen.

## License

MIT.

[1]: http://webbox.io
