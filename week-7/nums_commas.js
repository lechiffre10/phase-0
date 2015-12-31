// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Dan Turcza

// Pseudocode
// Input: Number
// Output: Comma seperated string
// steps:
// Convert number to a string
// Split string to turn into an Array and reverse it
// FOR loop to iterate through array and push comma every three characters
// reverse again and join to output comma seperated String


// Initial Solution
function separateComma(number) {
  
  number = String(number);
  number = number.split("");
  number = number.reverse();
  
  var new_num = [];
  
  for (var i = 0; i < number.length; i++) {
    
    new_num.push(number[i]);
    if (i % 3 == 2) {
      new_num.push(",");
    }
    
  }
  
  new_num = new_num.reverse();
  new_num = new_num.join("");
  
  
  
  return new_num;
   
  }

console.log(separateComma(1569743))



// Refactored Solution
function separateComma(number) {
  
  number = String(number).split("").reverse();
  
  var new_num = [];
  
  for (var i = 0; i < number.length; i++) {
    
    new_num.push(number[i]);
    if (i % 3 == 2 && i != number.length - 1) {
      new_num.push(",");
    }
    
  }
  
  new_num = new_num.reverse().join("");
  
  
  
  return new_num;
   
  }



// Your Own Tests (OPTIONAL)
var example = separateComma(10000);
var example2 = separateComma(200);

// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof example === "string"),
  "The value of test should be a String.",
  "1. "
)

assert(
  (example != ""),
  "The value of example shouldn't be empty.",
  "2. "
)

assert(
  (example == "10,000"),
  "The value should be 10,000",
  "3. "
)

assert(
  (example2 == "200"),
  "The value should be 200",
  "4. "
)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
The logic was the same. It was just figuring out the methods to use and the syntax for Javascript that was problematic at first.
Once we got the syntax down it wasn't that difficult.
What did you learn about iterating over arrays in JavaScript?
We used a FOR loop to iterate through the array in Javascript and adapted the syntax appropriately. we then used an IF statement to know when
to push the comma to the array!
What was different about solving this problem in JavaScript?
I'd say the syntax. The logic is pretty similar it's just getting used to functions and the built-in methods (eg converting to a String)
What built-in methods did you find to incorporate in your refactored solution?
The split and reverse ( same as in Ruby) which allowed us to split to an Array and reverse it to then be able to add the comma when appropriate
*/