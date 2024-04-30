#include "reverse_string.h"

namespace reverse_string {
    std::string reverse_string(std::string word){
        std::string reverse = "";
        for (int i = word.length() - 1; i >= 0; i--) {
            reverse += word[i];
        }
        return reverse;
    }
}  // namespace reverse_string
