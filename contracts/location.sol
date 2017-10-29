pragma solidity ^0.4.8;
contract SendLocation {
    
    string lat;
    string long;
    string time;
    address owner;
    
    
    function SendLocation() {
      owner = msg.sender;
    }
    
    function setLocation(string _lat, string _long, string _time){
      require(msg.sender == owner);
            lat = _lat;
            long = _long;
            time = _time;
    }
}