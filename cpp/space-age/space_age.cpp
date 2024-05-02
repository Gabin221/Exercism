#include "space_age.h"
namespace space_age {
  space_age::space_age(long seconds) : n(seconds) {}
  long space_age::seconds() const {
    return n;
  }
}