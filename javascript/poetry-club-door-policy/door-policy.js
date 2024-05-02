/**
 * Respond with the correct character, given the line of the
 * poem, if this were said at the front door.
 *
 * @param {string} line
 * @returns {string}
 */
export function frontDoorResponse(line) {
	return line[0];
}

/**
 * Format the password for the front-door, given the response
 * letters.
 *
 * @param {string} word the letters you responded with before
 * @returns {string} the front door password
 */
export function frontDoorPassword(word) {
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
export function backDoorResponse(line) {
	let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	let result = "";

	for (var i = line.length; i > 0; i--) {
		if (alphabet.includes(line[i])) {
			result += line[i];
			break;
		} else {
			continue;
		}
	}

	return result[0];
}

/**
 * Format the password for the back door, given the response
 * letters.
 *
 * @param {string} word the letters you responded with before
 * @returns {string} the back door password
 */
export function backDoorPassword(word) {
	return frontDoorPassword(word) + ", please"
}
