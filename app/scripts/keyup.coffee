keyup = new Vue(
  el: '#keyup'
  data:
    displayName: ""
  methods:
    addName: ->
      @displayName = @newName
)
