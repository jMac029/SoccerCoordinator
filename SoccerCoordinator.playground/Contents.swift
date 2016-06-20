//Soccer Coordinator : Treehouse iOS TechDegree Project 1

//Step One: Player Data into an empty collection

var allPlayers = [Dictionary<String, Any>]()

//Appending individual player data into players dictionary

allPlayers.append(["name" : "Joe Smith", "height": 42.0, "experience": true, "guardian": "Jim and Jan Smith"])
allPlayers.append(["name" : "Jill Tanner", "height": 36.0, "experience": true, "guardian": "Clara Tanner"])
allPlayers.append(["name" : "Bill Bon", "height": 43.0, "experience": true, "guardian": "Sara and Jenny Bon"])
allPlayers.append(["name" : "Eva Gordon", "height": 45.0, "experience": false, "guardian": "Wendy and Mike Gordon"])
allPlayers.append(["name" : "Matt Gill", "height": 40.0, "experience": false, "guardian": "Charles and Sylvia Gill"])
allPlayers.append(["name" : "Kimmy Stein", "height": 41.0, "experience": false, "guardian": "Bill and Hillary Stein"])
allPlayers.append(["name" : "Sammy Adams", "height": 45.0, "experience": false, "guardian": "Jeff Adams"])
allPlayers.append(["name" : "Karl Saygan", "height": 42.0, "experience": true, "guardian": "Heather Bledsoe"])
allPlayers.append(["name" : "Suzane Greenberg", "height": 44.0, "experience": true, "guardian": "Henrietta Dumas"])
allPlayers.append(["name" : "Sal Dali", "height": 41.0, "experience": false, "guardian": "Gala Dali"])
allPlayers.append(["name" : "Joe Kavalier", "height": 39.0, "experience": false, "guardian": "Sam and Elaine Kavalier"])
allPlayers.append(["name" : "Ben Finkelstein", "height": 44.0, "experience": false, "guardian": "Aaron and Jill Finkelstein"])
allPlayers.append(["name" : "Diego Soto", "height": 41.0, "experience": true, "guardian": "Robin and Sarika Soto"])
allPlayers.append(["name" : "Chloe Alaska", "height": 47.0, "experience": false, "guardian": "David and Jamie Alaska"])
allPlayers.append(["name" : "Arnold Willis", "height": 43.0, "experience": false, "guardian": "Claire Willis"])
allPlayers.append(["name" : "Phillip Helm", "height": 44.0, "experience": true, "guardian": "Thomas Helm and Eva Jones"])
allPlayers.append(["name" : "Les Clay", "height": 42.0, "experience": true, "guardian": "Wynonna Brown"])
allPlayers.append(["name" : "Herschel Krustofski", "height": 45.0, "experience": true, "guardian": "Hyman and Rachel Krustofski"])

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



