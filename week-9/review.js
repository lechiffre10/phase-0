//Pseudcode
//Object grocery list that takes in items and quantity for each item (propery+value)
//function to add an item to the list:
//INPUT: List name,Item and quantity to be added to the list
//OUTPUT: Print out item and quantity that is added
//function to update item:
//INPUT: list,item and quantity to be updated!
//OUTPUT: print out updated item with new quantity
//STEPS:Iterate through Object with FOR and check to see IF item is in the list
//IF item is not on the list print out statement to say so!
//function to remove item
//INPUT: list and item to remove
//OUTPUT: Print out that the item is removed!
//STEPS: check list to see if item is in list and remove it if it is
//IF item isnt on the list print out that it isnt on the list
//function to print list
//INPUT: list name
//Output: print out list nicely

var groceryList = {};

function addItem(list,item,qty){
  list[item]= qty;
  console.log("Added" +" "+qty+" "+ item +" "+ "to your list");
  
};
function removeItem(list,item){
  for(var name in list){
    if(item === name){
      delete list[item];
      console.log(item+" "+"is now removed from your list!");
      break;
    }
    else{
      console.log("Item is not in your list!");
    }
  }
};

function updateItem(list,item,qty){
  for(var name in list){
    if(item === name){
      list[item]=qty;
      console.log(item+" "+ "is now updated with the quantity:"+" "+qty);
    }
    else{
      console.log("Item is not in your list!");
    }
  }
};

function printList(list){
  console.log("Your grocery list consists of:");
  for(var name in list){
    var qty = list[name];
    console.log(name +":"+" "+ qty);
  }
};

addItem(groceryList,"Apples",4);
addItem(groceryList,"Bananas",5);
removeItem(groceryList,"Apples");
updateItem(groceryList,"Bananas",7);
printList(groceryList);
//reflection
//What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
//Mostly creating objects, iterating through objects. The codeacademy javaScript course helped a lot with this!
//What was the most difficult part of this challenge?
//Initially before doing the codeacademy course was really knowing how to approach it in a way to know exactly what to do!
//Did an array or object make more sense to use and why?
//An object because of the propery and value assignments to each item and their quantity! It made the most sense!
