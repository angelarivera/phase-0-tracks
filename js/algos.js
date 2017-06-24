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

// var objectOne = {
// 	name: "Steven",
// 	age: 40
// }

// var objectTwo = {
// 	name: "Steven",
// 	race: "Latino"
// }

// const checkMatch = function(objectOne, objectTwo) {
// 	// console.log(keys = Object.keys(objectOne));
// 	// console.log(values = keys.map(function(v){return objectOne[v];}))
// 	// console.log(keys2 = Object.keys(objectTwo));
// 	// console.log(values2 = keys.map(function(v){return objectTwo[v];}))

// 	for (key in objectOne) {
// 		if (objectTwo.hasOwnProperty(key)){
// 			console.log(key in objectTwo);
// 		}
// 	}
// 	// console.log(values = Object.values(objectOne));
// }

// console.log(checkMatch(objectOne, objectTwo));

// R E L E A S E   T W O 

// randomString function will print out the array with random strings

const randomString = function(integer) {
	var stringAmount = integer
	var randomStrings = []
	var name
	for (var i=0; i < stringAmount; i++){
		 name = randomStringGenerator(Math.floor(Math.random() * 10 + 1));
	randomStrings.push(name);
	}
	return randomStrings
}

console.log(randomString(9));


// randomStringGenerator function will create random strings

function randomStringGenerator(length)
{
    var randomArray = []

    var text = " ";
    
    var charset = "abcdefghijklmnopqrstuvwxyz";
    
    for( var i=0; i < length; i++ )
        text += charset.charAt(Math.floor(Math.random() * charset.length));
    
    return text;
}


/*
Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.
*/

for ()






