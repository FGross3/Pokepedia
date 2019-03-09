$(document).ready(function() {

    $.get("/api/pokemon", function(data) {
        data.forEach(function (pokemon) {
            console.log(pokemon);
            $("#stats").append(`<h3><strong>Number:</strong> <span id="id">${pokemon.id}</span></h3>`);
            $("#stats").append(`<h3><strong>Name:</strong> <span id="name">${pokemon.name}</span></h3>`);
            $("#stats").append(`<h3><strong>Type 1:</strong> <span id="type1">${pokemon.type1}</span></h3>`);
            $("#stats").append(`<h3><strong>Type 2:</strong> <span id="type2">${pokemon.type2}</span></h3>`);
        })
    })
})