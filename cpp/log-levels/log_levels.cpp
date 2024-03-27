#include <string>

namespace log_line {
    std::string message(std::string line) {
        // return the message
        int position = line.find(":");
        std::string message = line.substr(position+2);
        return message;
    }

    std::string log_level(std::string line) {
        // return the log level
        int position = line.find("]");
        std::string log_level = line.substr(1, position-1);
        return log_level;
    }

    std::string reformat(std::string line) {
        // return the reformatted message
        std::string message = log_line::message(line);
        std::string log_level = log_line::log_level(line);
        std::string reformat = message + " (" + log_level + ")";
        return reformat;
    }
}
