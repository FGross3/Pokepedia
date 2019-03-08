$(document).ready(function() {
    // This file just does a GET request to figure out which user is logged in
    // and updates the HTML on the page
    $.get("/api/user_data").then(function(data) {
      $(".member-name").text(data.email);
    });
/* global moment */

  // blogContainer holds all of our posts
  var teamContainer = $(".team-container");
  var postCategorySelect = $("#category");
  // Click events for the edit and delete buttons
  $(document).on("click", "button.delete", handleTeamDelete);
  $(document).on("click", "button.edit", handleTeamEdit);
  // Variable to hold our posts
  var teams;

  // The code below handles the case where we want to get blog posts for a specific author
  // Looks for a query param in the url for author_id
  var url = window.location.search;
  var trainerId;
  if (url.indexOf("?trainer_id=") !== -1) {
    trainerId = url.split("=")[1];
    getTeams(trainerId);
  }
  // If there's no authorId we just get all posts as usual
  else {
    getTeams();
  }


  // This function grabs posts from the database and updates the view
  function getTeams(trainer) {
    trainerId = trainer || "";
    if (trainerId) {
      trainerId = "/" + trainerId;
    }
    console.log("trainerID to be requested", trainerId);
    $.get("/api/teams" + trainerId, function(data) {
      console.log("Teams", data);
      teams = data;
      if (!teams || !teams.length) {
        displayEmpty(trainer);
      }
      else {
        initializeRows(teams);
      }
    });
  }

  // This function does an API call to delete posts
  function deleteTeam(id) {
    $.ajax({
      method: "DELETE",
      url: "/api/teams/" + id
    })
      .then(function() {
          // var imageUrl = "/assets/images/" + data.name + ".png";
        getTeams(postCategorySelect.val());
      });
  }

  // InitializeRows handles appending all of our constructed post HTML inside blogContainer
  function initializeRows(teams) {
    
    teamContainer.empty();
    var teamsToAdd = [];
    for (var i = 0; i < teams.length; i++) {
      teamsToAdd.push(createNewRow(teams[i]));
    }
    teamContainer.append(teamsToAdd);
  }

  // This function constructs a post's HTML
  function createNewRow(team) {
      console.log("createNewRow function team", team);
    var formattedDate = new Date(team.createdAt);
    formattedDate = moment(formattedDate).format("MMMM Do YYYY, h:mm:ss a");
    var newTeamCard = $("<div>");
    newTeamCard.addClass("card");
    var newTeamCardHeading = $("<div>");
    newTeamCardHeading.addClass("card-header");
    var deleteBtn = $("<button>");
    deleteBtn.text("x");
    deleteBtn.addClass("delete btn btn-danger");
    var editBtn = $("<button>");
    editBtn.text("EDIT");
    editBtn.addClass("edit btn btn-info");
    var newTeamTitle = $("<h2>");
    var newTeamDate = $("<small>");
    var newTeamTrainer = $("<h5>");
    newTeamTrainer.text("Chosen by: " + team.Trainer.name);
    newTeamTrainer.css({
      float: "right",
      color: "blue",
      "margin-top":
      "-10px"
    });
    var newTeamCardBody = $("<div>");
    newTeamCardBody.addClass("card-body");
    var newTeamBody = $("<p>");
    newTeamTitle.text(team.team_name + " ");
    newTeamBody.text(team.pokemon_1.toUpperCase()+"\n" + ", " + team.pokemon_2.toUpperCase()+"\n" + ", " + team.pokemon_3.toUpperCase()+"\n" + ", " + team.pokemon_4.toUpperCase()+"\n" + ", " + team.pokemon_5.toUpperCase()+"\n" + ", " + team.pokemon_6.toUpperCase()+"\n");
    newTeamDate.text(formattedDate);
    newTeamTitle.append(newTeamDate);
    newTeamCardHeading.append(deleteBtn);
    newTeamCardHeading.append(editBtn);
    newTeamCardHeading.append(newTeamTitle);
    newTeamCardHeading.append(newTeamTrainer);
    newTeamCardBody.append(newTeamBody);
    newTeamCard.append(newTeamCardHeading);
    newTeamCard.append(newTeamCardBody);
    newTeamCard.data("team", team);
    return newTeamCard;
  }

  // This function figures out which post we want to delete and then calls deletePost
  function handleTeamDelete() {
    var currentTeam = $(this)
      .parent()
      .parent()
      .data("team");
    deleteTeam(currentTeam.id);
  }

  // This function figures out which post we want to edit and takes it to the appropriate url
  function handleTeamEdit() {
    var currentTeam = $(this)
      .parent()
      .parent()
      .data("team");
    window.location.href = "/create?team_id=" + currentTeam.id;
  }

  // This function displays a message when there are no posts
  function displayEmpty(id) {
    var query = window.location.search;
    var partial = "";
    if (id) {
      partial = " for Trainer #" + id;
    }
    teamContainer.empty();
    var messageH2 = $("<h2>");
    messageH2.css({ "text-align": "center", "margin-top": "50px" });
    messageH2.html("No teams yet" + partial + ", navigate <a href='/create" + query +
    "'>here</a> in order to get started.");
    teamContainer.append(messageH2);
  }



});
  