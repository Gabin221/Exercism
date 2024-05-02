#ifndef SPACE_AGE_H
#define SPACE_AGE_H
namespace space_age {
  class space_age
  {
  private:
    long n;
  public:
    space_age(long);
    long seconds() const;
    inline double on_earth() const {
      return n / 31557600.0;
    }
    inline double on_mercury() const {
      return on_earth() / 0.2408467;
    }
    inline double on_venus() const {
      return on_earth() / 0.6151972;
    }
    inline double on_mars() const {
      return on_earth() / 1.8808158; 
    }
    inline double on_jupiter() const {
      return on_earth() / 11.862615;
    }
    inline double on_saturn() const {
      return on_earth() / 29.447498;
    }
    inline double on_uranus() const {
      return on_earth() / 84.016846;
    }
    inline double on_neptune() const {
      return on_earth() / 164.79132;
    }
  };
}  // space_age
#endif