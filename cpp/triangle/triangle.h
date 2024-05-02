#if !defined(TRIANGLE_H)
#define TRIANGLE_H

namespace triangle {

    enum class flavor {
        equilateral,
        isosceles,
        scalene
    };

    flavor kind(float a, float b, float c);

}  // namespace triangle

#endif // TRIANGLE_H