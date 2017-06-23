// R E L E A S E   Z E R O 

const wordsArr = ['are', 'longest', 'hello'];

const sortWords = function(x,y) {
	return (x.length < y.length);
}

const wordSorter = function(words) {
	return words.sort(sortWords)[0];
}

const sortedArray = wordSorter(wordsArr);

console.log(sortedArray);


/* R E L E A S E   O N E 
Write a function that takes two objects and checks to see if the objects share at least one key-value pair. Will return either true or false. 
*/

var objectOne = {
	name: "Steven",
	age: 40
}

var objectTwo = {
	name: "Steven",
	race: "Latino"
}

const checkMatch = function(objectOne, objectTwo) {
	// console.log(keys = Object.keys(objectOne));
	// console.log(values = keys.map(function(v){return objectOne[v];}))
	// console.log(keys2 = Object.keys(objectTwo));
	// console.log(values2 = keys.map(function(v){return objectTwo[v];}))

	for (key in objectOne) {
		if (objectTwo.hasOwnProperty(key)){
			console.log(key in objectTwo);
		}
	}
	// console.log(values = Object.values(objectOne));
}

console.log(checkMatch(objectOne, objectTwo));

/* R E L E A S E   T W O 
Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)

Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.
*/ 






