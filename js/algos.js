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
Write a function that takes an integer (for length) 
And builds + returns an array of strings of varying lengths (based on the integer)
- Range for letters in string = 1..10

example: console.log(randomStrings(3));
			=> [nnnnfph, opwe, lvknwjckdm]
*/ 

// const randomString = function(integer) {
// 	var string_length = integer
// 	var randomstring = []
// 	for (var i=0; i<string_length; i++){
// 		var r
// 	}
// }

// console.log(randomString(3));


function randomStringGenerator(length)
{
    var randomArray = []

    var text = " ";
    
    var charset = "abcdefghijklmnopqrstuvwxyz0123456789";
    
    for( var i=0; i < length; i++ )
        text += charset.charAt(Math.floor(Math.random() * charset.length));
    
    return text;
    console.log(randomArray.push(text));
}

console.log(randomStringGenerator(5));
// returns "gklzg"



