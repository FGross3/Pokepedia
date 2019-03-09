$(document).ready(function() {

    $.get("/api/pokemon", function(data) {
        data.forEach(function (pokemon) {
            var imagePath = "/images/";
            console.log(pokemon);
            $("#stats").append(`<h3><strong>Number:</strong> <span id="id">${pokemon.id}</span></h3>`);
            $("#stats").append(`<h3><strong>Name:</strong> <span id="name">${pokemon.name}</span></h3>`);
            $("#stats").append(`<h3><strong>Type 1:</strong> <span id="type1">${pokemon.type1}</span></h3>`);
            if (!pokemon.type2){
                $("type2").hide();
            }else{
            $("#stats").append(`<h3><strong>Type 2:</strong> <span id="type2">${pokemon.type2}</span></h3>`);
            }
            $("#stats").append(`<span id="image"><img src=${imagePath}${pokemon.image}></span>`);
        })
    })



    $("#search-btn").on("click", function() {

        
        var searchedPokemon = $("#pokemon-search").val().trim();
  
        // Using a RegEx Pattern to remove spaces from searchedCharacter
        // You can read more about RegEx Patterns later https://www.regexbuddy.com/regex.html
        searchedPokemon = searchedPokemon.replace(/\s+/g, "").toLowerCase();
  
        $.get("/api/pokemon/" + searchedPokemon, function(data) {
            var imagePath = "/images/"; 
            $()
            console.log(data);
          if (data) {
            $("#stats").show();
            $("#id").append(data.id);
            $("#name").append(data.name);
            $("#type1").append(data.type1);
            if(!data.type2){
                $("#type2").hide();
            }else{
            $("#type2").append(data.type2);
            }
            $("#image").append(`<img src=${imagePath}${data.image}></img>`);
          }
          else {
            $("#name").text("Your pokemon was not found.");
            $("#stats").hide();
          }
        });

    });




});