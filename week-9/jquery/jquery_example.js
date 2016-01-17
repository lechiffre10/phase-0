// U3.W9:JQuery


// I worked on this challenge [by myself, with: Sabri Halal].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
 //link the image
// Image was in the wrong directory, so we fixed the directory path
//RELEASE 1:

 //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'red'});
// // It grabs the body tags of html and changes its background color to pink
// //RELEASE 2:
//   //Add code here to select elements of the DOM
var bodyElement = $('.mascot') ;

// //RELEASE 3:
//   // Add code here to modify the css and html of DOM elements
bodyElement.css({'color': 'blue'});
bodyElement.css({'border': '3px solid black'});
bodyElement.css({'visibility': 'visible'});
// var color = $( this ).css( "background-color" );
//   $('div').html( "That div is <span style='color:" +
//     color + ";'>" + color + "</span>." );
// });

//RELEASE 4: Event Listener
 // Add the code for the event listener here
 $('img').on('click', function(e){
   e.preventDefault()
   $(this).attr('src', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQZp2E-3EHP_chywxYHmJnMmMH9wVSOVgqyXdgSwJyU9zXZatGL')
 })

//RELEASE 5: Experiment on your own






})  // end of the document.ready function: do not remove or write DOM manipulation below this.