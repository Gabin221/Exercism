#include <string>
#include "raindrops.h"

using namespace std;

namespace raindrops {

    string convert(int input){
        string sortie = "";
        if (input%3 == 0){
            sortie += "Pling";
        }
        if (input%5 == 0){
            sortie += "Plang";
        }
        if (input%7 == 0){
            sortie += "Plong";
        }
        if (input%3 != 0 && input%5 != 0 && input%7 != 0){
            sortie += to_string(input);
        }
        
        return sortie;
    }

}  // namespace raindrops
