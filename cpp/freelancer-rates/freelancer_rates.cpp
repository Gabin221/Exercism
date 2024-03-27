#include <math.h>
#include <iostream>

using namespace std;

// INFO: Headers from the standard library should be inserted at the top via
// #include <LIBRARY_NAME>

// daily_rate calculates the daily rate given an hourly rate
double daily_rate(double hourly_rate) {
    // TODO: Implement a function to calculate the daily rate given an hourly
    // rate
    double resultat = hourly_rate*8.0;
    return (double)resultat;
}

// apply_discount calculates the price after a discount
double apply_discount(double before_discount, double discount) {
    // TODO: Implement a function to calculate the price after a discount.
    double apply = before_discount - (before_discount*discount/100.0);
    return apply;
}

// monthly_rate calculates the monthly rate, given an hourly rate and a discount
// The returned monthly rate is rounded up to the nearest integer.
int monthly_rate(double hourly_rate, double discount) {
    // TODO: Implement a function to calculate the monthly rate, and apply a
    // discount.
    int monthly_rate = apply_discount(22.0*daily_rate(hourly_rate), discount);
    int resultat = 0;
    cout << monthly_rate%1 << endl;
    if ((int)monthly_rate%1 < 0.5) {
        resultat = floor(monthly_rate);
    } else {
        resultat = ceil(monthly_rate);
    }
    
    return resultat;
}

// days_in_budget calculates the number of workdays given a budget, hourly rate,
// and discount The returned number of days is rounded down (take the floor) to
// the next integer.
int days_in_budget(int budget, double hourly_rate, double discount) {
    // TODO: Implement a function that takes a budget, an hourly rate, and a
    // discount, and calculates how many complete days of work that covers.
    int nbr = floor(budget/(hourly_rate*(1 - discount/100)*8));
    return nbr;
}

int main() {
    cout << monthly_rate(62.8, 0.0) << endl;
    return 0;
}
