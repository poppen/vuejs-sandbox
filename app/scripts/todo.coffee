todo = new Vue(
  el: '#todo'
  data:
    todos: [
      {
        content: "todoリストを完成させる"
        done: true
      }
    ]
  methods:
    addTodo: ->
      todo = {
        content: ""
        done: false
      }
      todo.content = @todo
      @todos.push(todo)
      @todo = ""
    toggle: (index)->
      todo = @todos[index]
      todo.done = !todo.done
      @todos.$set(index, todo)
)
