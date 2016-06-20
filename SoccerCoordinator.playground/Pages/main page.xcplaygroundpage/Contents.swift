//Soccer Coordinator : Treehouse iOS TechDegree Project 1

//Step One: Player Data into a collection, my choice an immutable array of dictionaires

let allPlayers: [[String : Any]] = [
    
    ["name" : "Joe Smith", "height": 42.0, "experience": true, "guardian": "Jim and Jan Smith"],
    ["name" : "Jill Tanner", "height": 36.0, "experience": true, "guardian": "Clara Tanner"],
    ["name" : "Bill Bon", "height": 43.0, "experience": true, "guardian": "Sara and Jenny Bon"],
    ["name" : "Eva Gordon", "height": 45.0, "experience": false, "guardian": "Wendy and Mike Gordon"],
    ["name" : "Matt Gill", "height": 40.0, "experience": false, "guardian": "Charles and Sylvia Gill"],
    ["name" : "Kimmy Stein", "height": 41.0, "experience": false, "guardian": "Bill and Hillary Stein"],
    ["name" : "Sammy Adams", "height": 45.0, "experience": false, "guardian": "Jeff Adams"],
    ["name" : "Karl Saygan", "height": 42.0, "experience": true, "guardian": "Heather Bledsoe"],
    ["name" : "Suzane Greenberg", "height": 44.0, "experience": true, "guardian": "Henrietta Dumas"],
    ["name" : "Sal Dali", "height": 41.0, "experience": false, "guardian": "Gala Dali"],
    ["name" : "Joe Kavalier", "height": 39.0, "experience": false, "guardian": "Sam and Elaine Kavalier"],
    ["name" : "Ben Finkelstein", "height": 44.0, "experience": false, "guardian": "Aaron and Jill Finkelstein"],
    ["name" : "Diego Soto", "height": 41.0, "experience": true, "guardian": "Robin and Sarika Soto"],
    ["name" : "Chloe Alaska", "height": 47.0, "experience": false, "guardian": "David and Jamie Alaska"],
    ["name" : "Arnold Willis", "height": 43.0, "experience": false, "guardian": "Claire Willis"],
    ["name" : "Phillip Helm", "height": 44.0, "experience": true, "guardian": "Thomas Helm and Eva Jones"],
    ["name" : "Les Clay", "height": 42.0, "experience": true, "guardian": "Wynonna Brown"],
    ["name" : "Herschel Krustofski", "height": 45.0, "experience": true, "guardian": "Hyman and Rachel Krustofski"]
    
]

// The player data could have been accomplished in a class or struct as it is a more complex data structure


//Step Two: Sorting and Assigning Players into the three teams

//Constant for number of teams

let numberOfTeams = 3

//Dividing players into even amount of players per team

var playersPerTeam: Int = allPlayers.count / numberOfTeams

// for in loop counting players with experience and without

var playersWXp = [0]
var playersNoXp = [0]
var counter = 0




