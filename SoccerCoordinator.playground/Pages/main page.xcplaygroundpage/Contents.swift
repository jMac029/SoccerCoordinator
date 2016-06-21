//Soccer Coordinator : Treehouse iOS TechDegree Project 1

//Step One: Player Data into a collection, my choice an mutable array of dictionaires

var allPlayers: [[String : Any]] = [
    
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


//Step Two: Sorting and Grouping Players into the three teams

//temporary global variable to keep trip of players current team
var currentTeam = 0

// Dictionary of teams in order to sort and group the players into them

var soccerTeams: [Dictionary<String, Any>] = [
    ["name": "Dragons", "practiceDay": "March 17, 13:00"],
    ["name": "Sharks", "practiceDay": "March 17, 15:00"],
    ["name": "Raptors", "practiceDay": "March 18, 13:00"]
]

//Function to group players by experience and height

func playerGrouping() {
    
    //variables for experienced and noExpereienced players
    var experienced: [[Any]] = []
    var noExperience: [[Any]] = []
    
    //temporary variable to keep track of loop
    var loopCount = 0
    
    //for in loop to go through allPlayers array to group players by height and experience
    
    for player in allPlayers {
        
        if player["experience"] as! Bool {
            experienced.append([loopCount, player["height"]])
        } else {
            noExperience.append([loopCount, player["height"]])
        }
        
        loopCount += 1
    }
    
    //Assiging players sorted by height and experience
    let sortedByHeightExperienced = experienced.sort { ($0[1] as? Double) > ($1[1] as? Double) }
    let sortedByHeightNoExperience = noExperience.sort { ($0[1] as? Double) < ($1[1] as? Double) }
    
    playerSorting(sortedByHeightExperienced)
    playerSorting(sortedByHeightNoExperience)
}

// Function to sort players into the three teams evenly

func playerSorting(playerGrouping: [[Any]]) {
    
    for player in playerGrouping {
        
        allPlayers[player[0] as! Int]["teamAssignment"] = currentTeam
        currentTeam += 1
        
        if currentTeam == soccerTeams.count {
            currentTeam = 0
        }
    }
    
}

//This function to group and sort players by experience and height, this might have been better done in a protocol?

//Step Three: Send letters to guardian
func sendLetters() {
    for player in allPlayers {
        
        print("Greetings \(player["guardian"]!)! \n\nYour human offspring, \(player["name"]!) has been chosen to play on team \(soccerTeams[player["teamAssignment"] as! Int]["name"]!) in the Galatic Federation of Youth Soccer - under 48 human inches league(GFYS-U48).\nFirst practice is \(soccerTeams[player["teamAssignment"] as! Int]["practiceDay"]!) at Bonzai Beach on the island of Austrailia located on the Planet Earth, Sector ZZ9 Plural Z Alpha. Directions are available at your local directional planning office.\n\n Sincerley, \n GFYS-U48 Coordination Committee, Vogsphere \n\nGo \(soccerTeams[player["teamAssignment"] as! Int]["name"]!)!")
    }
}

playerGrouping()
sendLetters()
allPlayers
