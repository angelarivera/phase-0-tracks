/* 	P S E U D O C O D E 

	1. Get string from user 
	2. Create a variable with an empty string to store the new reversed word
	3. Run a for loop for each item in the string
	4. Inside the for loop, set the index at the last item of the string
	4. Set the while condition for the loop to run as long as the index is greater than or equal to 0
	5. Set the index to decrease after each iteration of the loop (backwards looping)
	6. As the loop iterates, it should select the last item in the string and save it into the new string. With it starting backwards from the word, the word saved in the new string should be the original word reversed. 
	7. Show the new string to the user.
*/

function reverseWord(string) {
    var newString = "";
    for (var i = string.length - 1; i >= 0; i--) {
        newString += string[i];
    }
    return newString;
}

var love = reverseWord('love');

var loveBeatshate = true;

if (loveBeatshate == true){
	console.log(love);
}

// I never knew the word love, pronounced backwards, sounds like the word "evil". Weird.


