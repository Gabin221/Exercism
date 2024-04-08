namespace targets {
// TODO: Insert the code for the alien class here

class Alien {
    private:
        int health = 3;
    public:
        int x_coordinate;
        int y_coordinate;

        Alien(int x, int y) {
            x_coordinate = x;
            y_coordinate = y;
        }

        int get_health() {
            return health;
        }

        bool hit() {
            if (health > 0) {
                health--;
                return true;
            } else {
                return false;
            }
        }

        bool is_alive() {
            if (health > 0) {
                return true;
            } else {
                return false;
            }
        }

        bool teleport(int new_x, int new_y) {
            x_coordinate = new_x;
            y_coordinate = new_y;
            return true;
        }

        bool collision_detection(Alien name) {
            if (x_coordinate == name.x_coordinate && y_coordinate == name.y_coordinate) {
                return true;
            } else {
                return false;
            }
        }
};

}  // namespace targets