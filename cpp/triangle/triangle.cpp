#include "triangle.h"
#include <iostream>

namespace triangle {

    flavor kind(float a, float b, float c) {
        if (a + b >= c && b + c >= a && a + c >= b) {
            if (a == b && a == c) {
                return flavor::equilateral;
            } else if (a ==b || a == c || b == c) {
                return flavor::isosceles;
            } else {
                return flavor::scalene;
            }
        } else {
            
        }
    }

}  // namespace triangle

int main() {
    std::cout << triangle::kind(2, 2, 2) << std::endl;
    return 0;
}