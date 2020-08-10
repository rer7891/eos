// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

var updateList

updateList = function(data) {
  var i, len, pet, results
  $('#search_results').empty()
  if (data.length > 0) {
    $('#no-results').hide()
    results = []
    for (i = 0, len = data.length; i < len; i++) {
      pet = data[i]
      results.push($('#search_results').append('<li><a href="' + pet.path + '">' + pet.name + '</a> [Owner: <a href="' + pet.owner.path + '">' + pet.owner.name + '</a>]'))
    }
    return results
  } else {
    return $('#no-results').show()
  }
}

jQuery(function() {
  updateList([])
  return $('#search').keyup(function() {
    var search_term
    search_term = $(this).val()
    console.log(search_term)
    if (search_term.length > 2) {
      return $.get('/pets', {
        data: search_term
      })
    }
  })
})