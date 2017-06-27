document.addEventListener('DOMContentLoaded', function(event) {
  var app = new Vue({
    el: '#tasks',

    data: {
      message: 'Wow this is cool!',
      todos: [{
                task: "Clean the house",
                completed: false
              },
              {
                task: 'Take out the trash',
                completed: false
              },
              {
                task: 'Feed the cat',
                completed: false
              }
            ],
      newTodo: '',
      completeTasks: 0
    },
    methods: {
      addTodo: function() {
        if(this.newTodo !== '') {

          var params = {
            task: this.newTodo,
            completed: false
          };

          this.todos.push(params);
          this.newTodo = '';
          this.completeTasks++
        }
      },

      markComplete: function(task) {
        task.completed = !task.completed;

        if(task.completed) {
          this.completeTasks -= 1
        } else {
          this.completeTasks += 1
        };


      },

      numberIncomplete: function() {
        var count = 0
        for(var i = this.todos.length -1; i > -1; i--) {
          if(this.todos[i].completed == false) {
            count++
          };
        };
        this.completeTasks = count
      },

      deleteCompleted: function() {
        for(var i = this.todos.length -1; i > -1; i--) {
          if(this.todos[i].completed === true) {
            this.todos.splice(i, 1);
          };
        };
      }
    },

    mounted: function() {
      this.numberIncomplete()
    }
  });
});

https://jsfiddle.net/6sb01z2n/1/




data: {
  tasks: [
          {
            task: "Clean the house",
            completed: false
          },

          {
            task: 'Take out the trash',
            completed: false
          },

          {
            task: 'Feed the cat',
            completed: false
          }

        ],
  newTask: '',
  incompleteTasks: 0
},