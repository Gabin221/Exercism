#include "doctor_data.h"
namespace heaven
{
    Vessel::Vessel(std::string name, int gen) : name(name), generation(gen), current_system(star_map::System::Sol) {}
    Vessel::Vessel(std::string name, int gen, star_map::System sys) : name(name), generation(gen), current_system(sys) {}
    Vessel Vessel::replicate(std::string new_name)
    {
        return Vessel { new_name, generation+1, current_system};
    }
    void Vessel::make_buster(){
        busters++;
    }
    bool Vessel::shoot_buster(){
        return busters>0 && busters--;
    }
    bool in_the_same_system(Vessel v1, Vessel v2) {
        return v1.current_system == v2.current_system;
    }
    std::string get_older_bob(Vessel v1, Vessel v2) {
        if (v1.generation <= v2.generation)
            return v1.name;
        else
            return v2.name;
    }
} // namespace heaven
