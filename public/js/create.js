$(document).ready(function() {
  // Getting jQuery references to the post body, title, form, and author select
  const pokemonOneInput = $("#pokemon1");
  const pokemonTwoInput = $("#pokemon2");
  const pokemonThreeInput = $("#pokemon3");
  const pokemonFourInput = $("#pokemon4");
  const pokemonFiveInput = $("#pokemon5");
  const pokemonSixInput = $("#pokemon6");
  const teamInput = $("#team");
  const teamForm = $("#battle");
  const trainerSelect = $("#trainer");
  // Adding an event listener for when the form is submitted
  $(teamForm).on("submit", handleFormSubmit);
  // Gets the part of the url that comes after the "?" (which we have if we're updating a post)
  const url = window.location.search;
  const teamId;
  const trainerId;
  // Sets a flag for whether or not we're updating a post to be false initially
  const updating = false;

  // If we have this section in our url, we pull out the post id from the url
  // In '?team_id=1', postId is 1
  if (url.indexOf("?team_id=") !== -1) {
    teamId = url.split("=")[1];
    getTeamData(teamId, "team");
  }
  // Otherwise if we have an author_id in our url, preset the author select box to be our Author
  else if (url.indexOf("?trainer_id=") !== -1) {
    trainerId = url.split("=")[1];
  }

  // Getting the authors, and their posts
  getTrainers();

  // A function for handling what happens when the form to create a new post is submitted
  function handleFormSubmit(event) {
    event.preventDefault();
    // Wont submit the post if we are missing a body, title, or author
    if (!teamInput.val().trim() || !pokemonOneInput.val().trim() || !pokemonTwoInput.val().trim() || !pokemonThreeInput.val().trim() || !pokemonFourInput.val().trim() || !pokemonFiveInput.val().trim() || !pokemonSixInput.val().trim() || !trainerSelect.val()) {
      return;
    }
    // Constructing a newPost object to hand to the database
    const newTeam = {
      TrainerId: trainerSelect
        .val()
        .trim(),
      trainer_id: trainerSelect
          .val()
          .trim(),
      team_name: teamInput
        .val()
        .trim(),
      pokemon_1: pokemonOneInput
          .val()
          .trim(),
      pokemon_2: pokemonTwoInput
          .val()
          .trim()  ,
      pokemon_3: pokemonThreeInput
          .val()
          .trim() ,
      pokemon_4: pokemonFourInput
          .val()
          .trim() ,
      pokemon_5: pokemonFiveInput 
          .val()
          .trim(),
      pokemon_6: pokemonSixInput
          .val()
          .trim()
    };

    // If we're updating a post run updatePost to update a post
    // Otherwise run submitPost to create a whole new post
    if (updating) {
      newTeam.id = teamId;
      updateTeam(newTeam);
    }
    else {
      submitTeam(newTeam);
    }
  }

  // Submits a new post and brings user to blog page upon completion
  function submitTeam(team) {
    $.post("/api/teams", team, function() {
      window.location.href = "/team";
    });
  }

  // Gets post data for the current post if we're editing, or if we're adding to an author's existing posts
  function getTeamData(id, type) {
    let queryUrl;
    switch (type) {
    case "team":
      queryUrl = "/api/teams/" + id;
      break;
    case "trainer":
      queryUrl = "/api/trainers/" + id;
      break;
    default:
      return;
    }
    $.get(queryUrl, function(data) {
      if (data) {
        console.log(data.TrainerId || data.id);
        // If this post exists, prefill our cms forms with its data
        teamInput.val(data.team);
        pokemonOneInput.val(data.pokemon_1);
        pokemonTwoInput.val(data.pokemon_2);
        pokemonThreeInput.val(data.pokemon_3);
        pokemonFourInput.val(data.pokemon_4);
        pokemonFiveInput.val(data.pokemon_5);
        pokemonSixInput.val(data.pokemon_6);
        trainerId = data.TrainerId || data.id;
        // If we have a post with this id, set a flag for us to know to update the post
        // when we hit submit
        updating = true;
      }
    });
  }

  // A function to get Authors and then render our list of Authors
  function getTrainers() {
    $.get("/api/trainers", renderTrainerList);
  }
  // Function to either render a list of authors, or if there are none, direct the user to the page
  // to create an author first
  function renderTrainerList(data) {
    if (!data.length) {
      window.location.href = "/trainers";
    }
    $(".hidden").removeClass("hidden");
    const rowsToAdd = [];
    for (var i = 0; i < data.length; i++) {
      rowsToAdd.push(createTrainerRow(data[i]));
    }
    trainerSelect.empty();
    console.log(rowsToAdd);
    console.log(trainerSelect);
    trainerSelect.append(rowsToAdd);
    trainerSelect.val(trainerId);
  }

  // Creates the author options in the dropdown
  function createTrainerRow(trainer) {
    const listOption = $("<option>");
    listOption.attr("value", trainer.id);
    listOption.text(trainer.name);
    return listOption;
  }

  // Update a given post, bring user to the blog page when done
  function updateTeam(team) {
    $.ajax({
      method: "PUT",
      url: "/api/teams",
      data: team
    })
      .then(function() {
        window.location.href = "/members";
      });
  }
});