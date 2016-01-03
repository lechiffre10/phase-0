// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number= 5;
console.log(number * number);


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a triangle
for (var string="#";string.length <= 7; string += "#")
console.log(string);



// Functions
prompt("What is your favorite food?");
alert("Hey! that is my favorite food too!");

// Complete the `minimum` exercise.
function min(a,b) {
	if (a < b)
		return a;
	else
		return b;
};


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Sabri Helal",
	age: 28,
	favoriteFood: ["pizza","lasagna","ramen"],
	quirk: "Can sing like there's no tomorrow"
};
console.log(me)