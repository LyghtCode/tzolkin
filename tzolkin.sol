pragma solidity ^0.5.0;

contract Tzolkin {
    // The Tzokin is the Mayan Calander cycle of the Spiritual Year synchronized witht the moon this is an attempt and experiment to 
    // synchronize Sprit with Technology - LyghtCode
    // Tzolkin cycle of 260 days
    uint256 public cycleLength = 260;
    
    // Tzolkin day names
    string[] public dayNames = ["Imix", "Ik", "Akbal", "Kan", "Chicchan", "Cimi", "Manik", "Lamat", "Muluc", "Oc", "Chuen", "Eb", "Ben", "Ix", "Men", "Cib", "Caban", "Etznab", "Cauac", "Ahau"];
    
    // Tzolkin numbers
    uint256[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7];
    
    // Tzolkin day
    uint256 public day;
    
    // Tzolkin month
    uint256 public month;
    
    // Tzolkin year
    uint256 public year;
    
    // Constructor
    constructor() public {
        day = 1;
        month = 1;
        year = 1;
    }
    
    // Function to increment the Tzolkin day
    function incrementDay() public {
        // Increment the day
        day++;
        
        // If the day is greater than 20, reset it to 1 and increment the month
        if (day > 20) {
            day = 1;
            month++;
        }
        
        // If the month is greater than 13, reset it to 1 and increment the year
        if (month > 13) {
            month = 1;
            year++;
        }
    }
    
    // Function to get the Tzolkin day name
    function getDayName() public view returns (string memory) {
        return dayNames[day - 1];
    }
    
    // Function to get the Tzolkin number
    function getNumber() public view returns (uint256) {
        return numbers[day - 1];
    }
    
    // Function to get the Tzolkin date
    function getDate() public view returns (uint256, uint256, uint256) {
        return (day, month, year);
    }
}
