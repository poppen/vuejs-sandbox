$ ->
  new Vue(
    el: '#app'
    data:
      msg: 'Hello World!'
      people: []
    created: ->
      data = @$data
      $.get("/people.json").done (res) ->
        data.people = res
    methods:
      submit: ->
        @$data.people.push @$data.user
        @$data.user = {}
  )
