#if !defined(GRADE_SCHOOL_H)
#define GRADE_SCHOOL_H

#include <string>
#include <map>
#include <vector>
#include <algorithm>

namespace grade_school {

    class school{
        private:
            std::map<int, std::vector<std::string>> rost;
        public:
            void add(std::string student, int grade);
            std::map<int, std::vector<std::string>> roster() const { 
                return rost; 
            };
            std::vector<std::string> grade(int g) const { 
                return rost.find(g) != rost.end() ? rost.at(g) : std::vector<std::string>(); 
            };
            
    };

    

}  // namespace grade_school

#endif // GRADE_SCHOOL_H