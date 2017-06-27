document.addEventListener('DOMContentLoaded', function(event) {
  var app = new Vue({
    el: '#tasks',
    data: {
      tasks: [ {name: "Take out trash", completed: false}],
      newTask: ''
    },

    methods: {
      addTask: function() {
        console.log(this.newTask)
        if(this.newTask !== '') {
          var params = {
            name: this.newTask,
            completed: false
          };

          this.tasks.push(params);
          this.newTask = '';

        };
      },

      markComplete: function(task) {
        task.completed = !task.completed;
      },

      deleteCompleted: function() {
        for(var i = this.tasks.length - 1; i > -1; i--) {
          if(this.tasks[i].completed) {
            this.tasks.splice(i, 1);
          };
        };
      }
    }

  });
});