console.log "'Allo from CoffeeScript!"

# demo = new Vue(
#   el: "#demo"
#   data:
#     firstName: "太郎"
#     lastName: "山田"
#     count: 0
#     message: ""
#   methods:
#     execute: ->
#       @message = "実行しました"
#       return
# )

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
