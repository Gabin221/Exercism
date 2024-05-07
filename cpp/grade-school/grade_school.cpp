#include "grade_school.h"

namespace grade_school {

    void school::add(std::string student, int grade) {
        if (rost.find(grade) == rost.end()) {
            rost.insert({grade, std::vector<std::string>(1, student)});
        }
        else {
            rost.at(grade).push_back(student);
        }
        sort(rost.at(grade).begin(), rost.at(grade).end());
    }

}  // namespace grade_school
