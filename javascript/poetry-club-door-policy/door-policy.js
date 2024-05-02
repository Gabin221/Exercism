/**
 * Respond with the correct character, given the line of the
 * poem, if this were said at the front door.
 *
 * @param {string} line
 * @returns {string}
 */
function frontDoorResponse(line) {
	return line[0];
}

/**
 * Format the password for the front-door, given the response
 * letters.
 *
 * @param {string} word the letters you responded with before
 * @returns {string} the front door password
 */
function frontDoorPassword(word) {
	let result = "";
	
	for (let i = 0; i < word.length; i++) {
		if (i === 0) {
			result += word[0].toUpperCase();
		} else {
			result += word[i].toLowerCase();
		}
	}

	return result;
}

/**
 * Respond with the correct character, given the line of the
 * poem, if this were said at the back door.
 *
 * @param {string} line
 * @returns {string}
 */
function backDoorResponse(line) {
	
}

/**
 * Format the password for the back door, given the response
 * letters.
 *
 * @param {string} word the letters you responded with before
 * @returns {string} the back door password
 */
function backDoorPassword(word) {
  throw new Error('Remove this line and implement the function');
}

console.log(frontDoorResponse('Stands so high'));
console.log(frontDoorPassword('SHIRE'));
console.log(frontDoorPassword('shire'));
console.log(backDoorResponse('Stands so high'));
console.log(backDoorResponse('Stands so high   '));
