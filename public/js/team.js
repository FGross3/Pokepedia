$(document).ready(function() {
  // Getting references to the name input and author container, as well as the table body
  var nameInput = $("#trainer-name");
  var trainerList = $("tbody");
  var trainerContainer = $(".trainer-container");
  // Adding event listeners to the form to create a new object, and the button to delete
  // an Author
  $(document).on("submit", "#trainer-form", handleTrainerFormSubmit);
  $(document).on("click", ".delete-trainer", handleDeleteButtonPress);

  // Getting the initial list of Authors
  getTrainers();

  // A function to handle what happens when the form is submitted to create a new Author
  function handleTrainerFormSubmit(event) {
    event.preventDefault();
    // Don't do anything if the name fields hasn't been filled out
    if (!nameInput.val().trim().trim()) {
      return;
    }
    // Calling the upsertAuthor function and passing in the value of the name input
    upsertTrainer({
      name: nameInput
        .val()
        .trim()
    });
  }

  // A function for creating an author. Calls getAuthors upon completion
  function upsertTrainer(trainerData) {
    $.post("/api/trainers", trainerData)
      .then(getTrainers);
  }

  // Function for creating a new list row for authors
  function createTrainerRow(trainerData) {
    var newTr = $("<tr>");
    newTr.data("trainer", trainerData);
    newTr.append("<td>" + trainerData.name + "</td>");
    if (trainerData.Teams) {
      newTr.append("<td> " + trainerData.Teams.length + "</td>");
    } else {
      newTr.append("<td>0</td>");
    }
    newTr.append("<td><a href='/members?trainer_id=" + trainerData.id + "'>Go to Teams</a></td>");
    newTr.append("<td><a href='/create?trainer_id=" + trainerData.id + "'>Create a Team</a></td>");
    newTr.append("<td><a style='cursor:pointer;color:red' class='delete-trainer'>Delete Trainer</a></td>");
    return newTr;
  }

  // Function for retrieving authors and getting them ready to be rendered to the page
  function getTrainers() {
    $.get("/api/trainers", function(data) {
      var rowsToAdd = [];
      for (var i = 0; i < data.length; i++) {
        rowsToAdd.push(createTrainerRow(data[i]));
      }
      renderTrainerList(rowsToAdd);
      nameInput.val("");
    });
  }

  // A function for rendering the list of authors to the page
  function renderTrainerList(rows) {
    trainerList.children().not(":last").remove();
    trainerContainer.children(".alert").remove();
    if (rows.length) {
      console.log(rows);
      trainerList.prepend(rows);
    }
    else {
      renderEmpty();
    }
  }

  // Function for handling what to render when there are no authors
  function renderEmpty() {
    var alertDiv = $("<div>");
    alertDiv.addClass("alert alert-danger");
    alertDiv.text("You must create a Trainer before you can create a Team.");
    trainerContainer.append(alertDiv);
  }

  // Function for handling what happens when the delete button is pressed
  function handleDeleteButtonPress() {
    var listItemData = $(this).parent("td").parent("tr").data("trainer");
    var id = listItemData.id;
    $.ajax({
      method: "DELETE",
      url: "/api/trainers/" + id
    })
      .then(getTrainers);
  }
});
