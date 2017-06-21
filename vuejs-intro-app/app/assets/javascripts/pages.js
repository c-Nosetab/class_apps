document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',
    data: {
      reviews: [
                {
                  text: "Vue.js is so cool",
                  rating: 10,
                  reviewer: "Chris"
                },

                {
                  text: "You're so functional!",
                  rating: 8,
                  reviewer: "Jim"
                },

                {
                  text: "I miss Angular.js",
                  rating: 4,
                  reviewer: "Bob"
                }

                ],
      newReviewText: '',
      newReviewRating: '',
      newReviewReviewer: ''
    },
    methods: {
      addReview: function() {

        if(this.newReviewText !== '' && this.newReviewRating !== '' && this.newReviewReviewer !== '') {
          var reviewObj = {
                            text: this.newReviewText,
                            rating: this.newReviewRating,
                            reviewer: this.newReviewReviewer
                          };

          this.reviews.push(reviewObj);
          this.newReviewText = ''
          this.newReviewRating = ''
          this.newReviewReviewer = ''
        }

      },

      isPositive: function(inputReview) {
        return inputReview.indexOf("stupid") === -1
      }

    }
  });
});
