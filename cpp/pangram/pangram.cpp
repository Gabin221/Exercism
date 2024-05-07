#include "pangram.h"

namespace pangram {

    bool verif(std::string str, std::string substr){
        if (str.find(substr) != std::string::npos) {
            return true;
        } else {
            return false;
        }
    }

    bool is_pangram(std::string sentence) {
        std::string alphabet = "abcdefghijklmnopqrstuvwxyz";
        std::string lettresPassees = "";

        std::transform(sentence.begin(), sentence.end(), sentence.begin(), [](unsigned char c){ return std::tolower(c); });

        std::string result = sentence.substr(0, sentence.length());

        for (long unsigned int i = 0; i < sentence.size(); ++i) {
            std::string character = sentence.substr(i, 1);
            if (verif(alphabet, character) && !verif(lettresPassees, character)) {
                lettresPassees += character;
            }
        }

        if (lettresPassees.size() == 26) {
            return true;
        } else {
            return false;
        }
    }

}  // namespace pangram
