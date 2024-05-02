#pragma once
#ifndef lasagna_master_h
#define lasgna_master_h

#include <vector>
#include <string>

using namespace std;

namespace lasagna_master
{

    struct amount
    {
        int noodles;
        double sauce;
    };

    int preparationTime(vector<string> layers, int time = 2);
    amount quantities(vector<string> layers);

    void addSecretIngredient(vector<string> &myList, string friendsList);
    void addSecretIngredient(vector<string> &myList, vector<string> friendsList);

    vector<double> scaleRecipe( vector<double> ingredients , int portions );


} // namespace lasagna_master

#endif