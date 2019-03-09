$(document).ready(function() {

  // function renderCard() {
    
  //   $("#stats").append(`<h3><strong>Pokedex Number:</strong> <span id="id">${data.id}</span></h3>`);
  //           $("#stats").append(`<h3><strong>Pokemon Name:</strong> <span id="name">${data.name}</span></h3>`);
  //           $("#stats").append(`<h3><strong>Type 1:</strong> <span id="type1">${data.type1}</span></h3>`);
  //           // $("#stats").append(`<h3><strong>Type 2:</strong> <span id="type2">${pokemon.type2}</span></h3>`);
  //           if (!data.type2){
  //             $("type2").hide()
  //           } else{
  //             $("#stats").append(`<h3><strong>Type 2:</strong> <span id="type2">${data.type2}</span></h3>`);
  //           }
  // }


    $.get("/api/pokemon", function(data) {
        data.forEach(function (data) {
            var imagePath = "/images/";
            console.log(data);
            $("#stats").append(`<h3><strong>Pokemon Name:</strong> <span id="name">${data.name}</span></h3>`);
            $("#stats").append(`<h3><strong>Pokedex Number:</strong> <span id="id">${data.id}</span></h3>`);
            $("#stats").append(`<h3><strong>Type 1:</strong> <span id="type1">${data.type1}</span></h3>`);
            if (!data.type2){
              $("type2").hide()
              $("#stats").append(`<span id="image"><img src=${imagePath}${data.images}></span>`);
            } else{
              $("#stats").append(`<h3><strong>Type 2:</strong> <span id="type2">${data.type2}</span></h3>`);
              $("#stats").append(`<span id="image"><img src=${imagePath}${data.images}></span>`);
            }
            // $("#stats").append(`<span id="image"><img src=${imagePath}${pokemon.image}></span>`);
        })
    })


    $("#search-btn").on("click", function() {
        var searchedPokemon = $("#pokemon-search").val().trim();

  
        // Using a RegEx Pattern to remove spaces from searchedCharacter
        // You can read more about RegEx Patterns later https://www.regexbuddy.com/regex.html
        searchedPokemon = searchedPokemon.replace(/\s+/g, "").toLowerCase();
  
        $.get("/api/pokemon/" + searchedPokemon, function(data) {
          console.log(data);
          var imagePath = "/images/";
          if (data) {
            $("#stats").empty();
            $("#stats").append(`<h3><strong>Pokemon Name:</strong> <span id="name">${data.name}</span></h3>`);
            $("#stats").append(`<h3><strong>Pokedex Number:</strong> <span id="id">${data.id}</span></h3>`);
            $("#stats").append(`<h3><strong>Type 1:</strong> <span id="type1">${data.type1}</span></h3>`);
            if (!data.type2){
              $("type2").hide()
              $("#stats").append(`<span id="image"><img src=${imagePath}${data.images}></span>`);
            } else{
              $("#stats").append(`<h3><strong>Type 2:</strong> <span id="type2">${data.type2}</span></h3>`);
              $("#stats").append(`<span id="image"><img src=${imagePath}${data.images}></span>`);
            }
          }
          else {
            $("#stats").empty();
            $("#stats").append(`<h3><strong>Your Pokemon cannot be found</strong> <span id="name"></span></h3>`);
          }
        });

    });




});