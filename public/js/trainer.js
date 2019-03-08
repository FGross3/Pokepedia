$(document).ready(function() {
  // Getting references to the name input and author container, as well as the table body
  var nameInput = $("#trainer-name");
  var trainerList = $("tbody");
  var trainerContainer = $(".trainer-container");
  // Adding event listeners to the form to create a new object, and the button to delete
  // an Author
  $(document).on("submit", "#trainer-form", handleTrainerFormSubmit);

  // Getting the initial list of Authors
  getTainers();

  // A function to handle what happens when the form is submitted to create a new Author
  function handleTrainerFormSubmit(event) {
    event.preventDefault();
    // Don't do anything if the name fields hasn't been filled out
    if (!nameInput.val().trim().trim()) {
      return;
    }
    // Calling the upsertAuthor function and passing in the value of the name input
    retrieveTrainer({
      name: nameInput
        .val()
        .trim()
    });
  }

  // A function for creating an author. Calls getAuthors upon completion
  function retrieveTrainer(trainerData) {
    $.get("/api/trainers/:id", trainerData)
      .then(getTrainers);
  }

  // Function for creating a new list row for authors
  // function createAuthorRow(authorData) {
  //   var newTr = $("<tr>");
  //   newTr.data("author", authorData);
  //   newTr.append("<td>" + authorData.name + "</td>");
  //   if (authorData.Posts) {
  //     newTr.append("<td> " + authorData.Posts.length + "</td>");
  //   } else {
  //     newTr.append("<td>0</td>");
  //   }
  //   newTr.append("<td><a href='/blog?author_id=" + authorData.id + "'>Go to Posts</a></td>");
  //   newTr.append("<td><a href='/cms?author_id=" + authorData.id + "'>Create a Post</a></td>");
  //   newTr.append("<td><a style='cursor:pointer;color:red' class='delete-author'>Delete Author</a></td>");
  //   return newTr;
  // }

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
    alertDiv.text("No trainers have been created teams yet.  Be the first!");
    trainerContainer.append(alertDiv);
  }

  // Function for handling what happens when the delete button is pressed
  // function handleDeleteButtonPress() {
  //   var listItemData = $(this).parent("td").parent("tr").data("author");
  //   var id = listItemData.id;
  //   $.ajax({
  //     method: "DELETE",
  //     url: "/api/authors/" + id
  //   })
  //     .then(getAuthors);
  // }
});
