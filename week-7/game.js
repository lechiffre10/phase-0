 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Get DJ Khaled to Chef Dee
// Goals: pickup keys along the way and get to chef Dee before They(the villain) get to DJ Khaled
// Characters: DJ Khaled as the hero, They as the villain
// Objects:
//djKhaled,they,chefDee
// Functions:
// a function for player movement(up,down,left,right)


// Pseudocode
//Create djKhaled variable that consists of position properties (x,y) and key
//Create a movement function for up,down,left,right movement
// When djKhaled moves, they(the villain) moves as well if they are at the same position game over
// If djKhaled picks up a key it adds to the key and if he finds himself at the same position as chefDee he wins
//

// Initial Code
//Create DJ Khaled variable ,objects with properties
var djKhaled = {
	posX: 0,
	posY: 0,
	key: 0,

//function for direction
move: function(direction){
	if (direction == "up"){
		djKhaled.posY += 3;
	}
	else if (direction == "down"){
		djKhaled.posY -= 3;
	}
	else if (direction == "forward"){
		djKhaled.posX += 3;
	}
	else if (direction == "backward"){
		djKhaled.posX -= 3;
	}

console.log("Bless up!, ride wit me to " + djKhaled.posX +","+ djKhaled.posY);

//when DJ Khaled moves, They move as well
they.posX = Math.floor((Math.random()*50)+1);
they.posY = Math.floor((Math.random()*50)+1);
console.log("They move to "+they.posX+","+they.posY);
// check to see if DJ Khaled picked up a key or encountered They
if (djKhaled.posX == they.posX && djKhaled.posY == they.posY){
	console.log("They don't want you to win man! Game Over ");
}
else if (djKhaled.posX == key.posX && djKhaled.posY == key.posY){
	djKhaled.key += 1;
	console.log("Another one!");
}



//check to see if DJ Khaled is at the same position as Chef Dee
if (djKhaled.posX == chefDee.PosX && djKhaled.posY == chefDee.posY){
	console.log("Chef Dee let's see what we got for breakfast! More success!");
}
}
};

var key = {

	posX: Math.floor(Math.random()*50)+1,
 	posY: Math.floor(Math.random()*50)+1,
};


var they = {
	posX: 0,
	posY: 0,
};

var chefDee = {
	posX: Math.floor(Math.random()*50)+1,
 	posY: Math.floor(Math.random()*50)+1,
};

djKhaled.move("up")
djKhaled.move("down")


// Reflection
//What was the most difficult part of this challenge?
//I'm still trying to get used to the syntax of Javascript. So to me thats the biggest factor. I plan on reading the Javascript and Jquery book that was recommended
//because i'd like to dive a bit more in depth in Javascript once we finish the bootcamp. Unfortunately due to time constraints I couldn't do a refactored code( I've been really sick the past 3 days so if this is something youd like me to work on afterwards I can definitely do so)
//What did you learn about creating objects and functions that interact with one another?
// The ability to interact, manipulate and check objects from outside is pretty powerful stuff. We managed to look at that a bit throughout the challenges but its nice to put it to work using the example of a game
//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//Mostly Math.random was something pretty new and of great use in this challenge
//How can you access and manipulate properties of objects?
//When manipulating it from within the object you can use the "this" keyword. when we want to manipulate or change the value of a property we can use the dot notation "object.property = value" This was similar to the challenge
// with children in week-7!
//
//
//
//
//
//