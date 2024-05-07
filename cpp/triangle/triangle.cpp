#include "triangle.h"
#include <stdexcept>

namespace triangle {

    flavor kind(double a, double b, double c) {
        if ((a > 0 && b > 0 && c > 0) && (a + b >= c && b + c >= a && a + c >= b)) {
            if (a == b && a == c) {
                return flavor::equilateral;
            } else if (a == b || a == c || b == c) {
                return flavor::isosceles;
            } else {
                return flavor::scalene;
            }
        } else {
            throw std::domain_error("invalid triangle");
        }
    }

}  // namespace triangle