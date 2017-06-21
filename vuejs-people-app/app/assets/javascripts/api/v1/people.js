// document.addEventListener('DOMContentLoaded', function(event) {

//   var app = new Vue({
//     el: '#people',

//     data: {
//       people: [
//                {
//                 name: "Steve",
//                 bio: "This is a bio",
//                 bioVisible: false
//                },
//                {
//                 name: "Karol",
//                 bio: "This is another bio",
//                 bioVisible: false
//                }
//               ],
//       newPersonName: '',
//       newPersonBio: ''

//     },

//     methods: {
//       toggleBio: function(person) {
//         person.bioVisible = !person.bioVisible;
//       },

//       addPerson: function() {
//         var newPerson = {
//                          name: this.newPersonName,
//                          bio: this.newPersonBio,
//                          bioVisible: false
//                          };

//         this.people.push(newPerson);
//         this.newPersonName = '';
//         this.newPersonBio = '';

//       },

//       deletePerson: function(person) {
//         var index = this.people.indexOf(person);
//         this.people.splice(index, 1);
//       }
//     }
//   });
// });