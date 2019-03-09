$(document).ready(function() {


    $.get("/api/pokemon", function(data) {
        data.forEach(function (pokemon) {
            console.log(pokemon);
            $("#stats").append(`<h3><strong>Pokedex Number:</strong> <span id="id">${pokemon.id}</span></h3>`);
            $("#stats").append(`<h3><strong>Pokemon Name:</strong> <span id="name">${pokemon.name}</span></h3>`);
            $("#stats").append(`<h3><strong>Type 1:</strong> <span id="type1">${pokemon.type1}</span></h3>`);
            $("#stats").append(`<h3><strong>Type 2:</strong> <span id="type2">${pokemon.type2}</span></h3>`);
        })
    })


    $("#search-btn").on("click", function() {
        var searchedPokemon = $("#pokemon-search").val().trim();

  
        // Using a RegEx Pattern to remove spaces from searchedCharacter
        // You can read more about RegEx Patterns later https://www.regexbuddy.com/regex.html
        searchedPokemon = searchedPokemon.replace(/\s+/g, "").toLowerCase();
  
        $.get("/api/pokemon/" + searchedPokemon, function(data) {
          console.log(data);
          if (data) {
            $("#stats").empty();
            $("#stats").append(`<h3><strong>Pokedex Number:</strong> <span id="id">${data.id}</span></h3>`);
            $("#stats").append(`<h3><strong>Pokemon Name:</strong> <span id="name">${data.name}</span></h3>`);
            $("#stats").append(`<h3><strong>Type 1:</strong> <span id="type1">${data.type1}</span></h3>`);
            $("#stats").append(`<h3><strong>Type 2:</strong> <span id="type2">${data.type2}</span></h3>`);
            
            // $("#id").text(data.id);
            // $("#name").text(data.name);
            // $("#type1").text(data.type1);
            // $("#type2").text(data.type2);
          }
          else {
            $("#name").text("Your pokemon was not found.");
            $("#stats").hide();
            $("#error").show();
          }
        });

    });




});