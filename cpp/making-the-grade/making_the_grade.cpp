#include <array>
#include <string>
#include <vector>
#include <iostream>

using namespace std;

// Round down all provided student scores.
vector<int> round_down_scores(vector<double> student_scores) {
    // TODO: Implement round_down_scores
    vector<int> scores = {};

    for (unsigned int i = 0; i < student_scores.size(); i++) {
            scores.push_back((int)student_scores[i]);
    }

    return scores;
}


// Count the number of failing students out of the group provided.
int count_failed_students(vector<int> student_scores) {
    // TODO: Implement count_failed_students
    return 0;
}

// Determine how many of the provided student scores were 'the best' based on the provided threshold.
vector<int> above_threshold(vector<int> student_scores, int threshold) {
    // TODO: Implement above_threshold
    return {};
}

// Create a list of grade thresholds based on the provided highest grade.
array<int, 4> letter_grades(int highest_score) {
    // TODO: Implement letter_grades
    return {};
}

// Organize the student's rank, name, and grade information in ascending order.
vector<string> student_ranking(vector<int> student_scores, vector<string> student_names) {
    // TODO: Implement student_ranking
    return {};
}

// Create a string that contains the name of the first student to make a perfect score on the exam.
string perfect_score(vector<int> student_scores, vector<string> student_names) {
    // TODO: Implement perfect_score
    return "";
}

int main() {
    round_down_scores({90.33, 40.5, 55.44, 70.05, 30.55, 25.45, 80.45, 95.3, 38.7, 40.3});
    return 0;
}
