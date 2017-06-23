// R E L E A S E   Z E R O 

const wordsArr = ['are', 'longest', 'hello'];

const sortWords = function(x,y) {
	return (x.length < y.length);
}

const wordSorter = function(words) {
	return words.sort(sortWords)[0];
}

const sortedArray = wordSorter(wordsArr);


/* R E L E A S E   O N E 
Write a function that takes two objects and checks to see if the objects share at least one key-value pair. Will return either true or false. 
*/

var foo = { 'alpha' : 'puffin', 'beta' : 'beagle' };
var keys = Object.keys(foo); // ['alpha', 'beta'] 
// (or maybe some other order, keys are unordered).


var objectOne = {
	name: "Steven",
	age: 40
}

var objectTwo = {
	name: "Julia",
	age: 40
}

const checkMatch = function(objectOne, objectTwo) {
	console.log(keys = Object.keys(objectOne));
	console.log(values = keys.map(function(v){return objectOne[v];}))
	console.log(keys2 = Object.keys(objectTwo));
	console.log(values2 = keys.map(function(v){return objectTwo[v];}))
	// console.log(values = Object.values(objectOne));
}

console.log(checkMatch(objectOne, objectTwo));


/* D R I V E R   C O D E 

For Release One
console.log(sortedArray);
*/





