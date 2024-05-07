#include "grains.h"
#include <math.h>

namespace grains {

    unsigned long int square(int n) {
        unsigned long int res = pow(2, n-1);
        return res;
    }

    unsigned long int total() {
        unsigned long int nbr = 0;

        for (int i = 1; i <= 64; i++) {
            nbr += square(i);
        }

        return nbr;
    }

}  // namespace grains