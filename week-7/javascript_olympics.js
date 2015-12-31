

 // JavaScript Olympics

// I paired [by myself, with: Steven King] on this challenge.

// This challenge took me [1] hours.

/* 


}


*/

// Bulk Up

function win(array) {
  for (var i= 0; i < array.length ; i ++){
    array[i].win = array[i].name + " won the " +array[i].event +" event!";
  
  console.log(array[i].win);
  }
  
}

//driver code
win([{name:"Lebron James",event:"Basketball"},{name:"Michael Phelps",event:"Swimming"}])


// Jumble your words
function reverser(string){
 var reverseString= string.split("").reverse().join("");
  console.log(reverseString);
}

//driver code
reverser("California")


// 2,4,6,8
function justEvens(numbers){
  var evenArray = []
  for (var i=0; i <numbers.length; i++){
    if (numbers[i] % 2 == 0){
      evenArray.push(numbers[i]);
    } 
  }
  console.log(evenArray)
}

//driver
justEvens([2,3,4,5,7,8,9])


// "We built this city"


function Athlete(name,age,sport,quote){
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote
}

//driver code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

//Reflection
//What JavaScript knowledge did you solidify in this challenge?
// functions, variables and iterating with Javascript syntax.
// What are constructor functions?
// constructor functions allow us to create multiple objects of the same type using the "this" keyword within that function.
// How are constructors different from Ruby classes (in your research)?
// We use the this keyword to specify the object that owns the function . We have several arguments and we specify using the this keyword.
// It also differentiates when instantiating when creating a variable (var) we use the new keyword before the function name ( as opposed to Athlete.new in Ruby)