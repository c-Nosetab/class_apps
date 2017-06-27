document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#thing',

    data: {
            things: [],
            newName: '',
            newSpice: '',
            updateName: "",
            updateBio: '',
            errors: [],
            nameFilter: ''

    },

    mounted: function(){
      $.get('api/v2/things.json', function(foodThings) {
        this.things = foodThings;
      }.bind(this));
    },

    methods: {

      isValidThing: function(inputThing) {
        return inputThing.name.indexOf(this.nameFilter) !== -1;
      },

      addFood: function() {
        this.errors = []
        var params = {
                      name: this.newName,
                      spice: this.newSpice
                     };

        $.post('api/v2/things.json', params, function(newItem) {
          this.things.push(newItem);
          this.newName = '';
          this.newSpice = '';
        }.bind(this)).fail(function(response) {
          this.errors = (response.responseJSON.errors)
        }.bind(this));
      },

      showCurrentInfo: function(thing) {
        thing.infoVisible = !thing.infoVisible;
        console.log(thing.name)
      },

      updateFood: function(thing) {
        var index = this.things.indexOf(thing);

        var params = {
                      name: this.updateName,
                      spice: this.updateSpice
        };

        $.data('/api/v2/things.json', params, function(updateThing) {
          console.log("Made it here!")
          this.things[index].put(updateThing);
        }.bind(this));
      },

      deleteFood: function(thing) {
        var index = this.things.indexOf(thing);

        $.delete('/api/v2/things.json', params, function(deleteThing) {
          this.things.splice(index, 1);
        }.bind(this));
      }



    }

  })
});