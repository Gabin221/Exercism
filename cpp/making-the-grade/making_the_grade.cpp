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
    int nbr = 0;

    for (unsigned int i = 0; i < student_scores.size(); i++) {
            if (student_scores[i] <= 40){
                nbr += 1;
            }
    }

    return nbr;
}

// Determine how many of the provided student scores were 'the best' based on the provided threshold.
vector<int> above_threshold(vector<int> student_scores, int threshold) {
    // TODO: Implement above_threshold
    vector<int> meilleurs = {};

    for (unsigned int i = 0; i < student_scores.size(); i++) {
        if (student_scores[i] >= threshold){
            meilleurs.push_back(student_scores[i]);
        }
    }

    return meilleurs;
}

// Create a list of grade thresholds based on the provided highest grade.
array<int, 4> letter_grades(int highest_score) {
    // TODO: Implement letter_grades
    array<int, 4> grades = {};

    for (int i = 0; i < 4; i++) {
        grades[i] = 41 + i*(highest_score - 40)/4;
    }

    return grades;
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
    letter_grades(88);
    return 0;
}
