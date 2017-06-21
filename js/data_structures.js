var colors = ["Black", "Dark Black", "Faded Black", "White"];

var names  = ["Ophelia", "Rosalind", "Petruchio", "Tybalt"];

// Add item to color array
colors.push("Cream");

// Add item to names array
names.push("Laertes");

// Print arrays to console
console.log(colors);
console.log(names);


// Turn arrays into an object

var obj = {}

var names  = ["Ophelia", "Rosalind", "Petruchio", "Tybalt"];
var colors = ["Black", "Dark Black", "Faded Black", "White"];

names.forEach(function(value, index) {

  obj[value] = colors[index];

});

// Print pbkect to console
console.log(obj);


