// R E L E A S E   O N E ,  T W O 

// const args = process.argv;

// const wordsArr = args.slice(2, args.length);

const wordsArr = ['are', 'hello', 'longest'];

const sortWords = function(x,y) {
	return (x.length < y.length);
}

const wordSorter = function(words) {
	return words.sort(sortWords)[0];
}

const sortedArray = wordSorter(wordsArr);

// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.

// Here are some sample objects and their expected return values:

// Driver code that tests function on array

// yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true
// yourFunction({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true
// These both return true because at least one key-value pair matches between the two objects.
// If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent. 

// --

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. 

// So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). 

// The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)

// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

// forEach ((array) => {

// }

// while (i = 0, i < array.length, i++){
	
// }


// D R I V E R   C O D E 
console.log(sortedArray);

