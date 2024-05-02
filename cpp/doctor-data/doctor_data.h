#pragma once

#include <string>

namespace star_map
{
    enum System
    {
        Sol,
        BetaHydri,
        EpsilonEridani,
        AlphaCentauri,
        DeltaEridani,
        Omicron2Eridani
    };
}

namespace heaven
{
    class Vessel
    {
    private:
        /* data */
    public:
        std::string name;
        int generation;
        int busters;
        star_map::System current_system;
        void make_buster();
        bool shoot_buster();
        Vessel replicate(std::string);
        Vessel(std::string, int);
        Vessel(std::string, int, star_map::System);
    };
    bool in_the_same_system(Vessel, Vessel);
    std::string get_older_bob(Vessel, Vessel);
}
