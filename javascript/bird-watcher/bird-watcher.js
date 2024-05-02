/**
 * Calculates the total bird count.
 *
 * @param {number[]} birdsPerDay
 * @returns {number} total bird count
 */
export function totalBirdCount(birdsPerDay) {
	var result = 0;

	for (var i = 0; i <birdsPerDay.length; i++) {
		result += birdsPerDay[i];
	}

	return result;
}

/**
 * Calculates the total number of birds seen in a specific week.
 *
 * @param {number[]} birdsPerDay
 * @param {number} week
 * @returns {number} birds counted in the given week
 */
export function birdsInWeek(birdsPerDay, week) {
	var conditionStart = 7*(week - 1);
	var conditionEnd = conditionStart + 7;
	var result = 0;

	for (var i = conditionStart; i < conditionEnd; i++) {
		result += birdsPerDay[i];
	}

	return result;
}

/**
 * Fixes the counting mistake by increasing the bird count
 * by one for every second day.
 *
 * @param {number[]} birdsPerDay
 * @returns {number[]} corrected bird count data
 */
export function fixBirdCountLog(birdsPerDay) {
	for (var i = 0; i <birdsPerDay.length; i++) {
		if (i%2 === 0) {
            birdsPerDay[i] += 1;
        }
	}

	return birdsPerDay;
}
