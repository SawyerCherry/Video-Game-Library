//
//  Library.swift
//  Video Game Library
//
//  Created by Sawyer Cherry on 9/4/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import Foundation

class Library {
    
    
    var gameArray: [Game] = [Game(title: "FarCry 5"), Game(title: "GTA V"), Game(title: "Fortnite"), Game(title: "Skyrim: The Elder Scrolls"), Game(title: "Farming Simulator 17")]
    
    
    func addGame() {
        print("Enter the Password.")
        var input: String? = nil
        
        repeat {
            let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            if line != "" {
                input = line
            } else {
                print("Invalid Input!")
            }
        } while input == nil
        
        if input == "Greasy Lob" {
            for index in 0..<gameArray.count {
                print("\(index). \(gameArray[index].title)")
            }
        }
        
        print("Please enter the title of the New Game that you would like to add")
        
        var newGameTitle = readLine()
        
        while newGameTitle == nil || newGameTitle == "" {
            print("Invalid Title, Please Try Again")
            newGameTitle = readLine()
            
        }
        
        let newGame = Game(title: newGameTitle!)
        gameArray.append(newGame)
        
        for game in gameArray {
            print(game.title)
        }
        
    }
    
    func removeGame() {
        print("Please enter the number of the game that you wish to remove.")
        for index in 0..<gameArray.count {
            print("\(index). \(gameArray[index].title)")
        }
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid Input.")
            userInput = Int(readLine()!)
        }
        gameArray.remove(at: userInput!)
    }
    
    func getUnavailableGames() -> [Game]{
        
        var gameArrayNew2 = [Game]()
        for game in gameArrayNew2 {
            if game.checkedIn == false {
                gameArrayNew2.append(game)
            }
            
        }
        return gameArrayNew2
    }
    
    
    
    func listUnavailibleGames() {
        print("You will now get the list of all of the Unavailable Games.")
        for game in getUnavailableGames() {
            print(game.title)
        }
        
    }
    
    
    func getAvailableGames() -> [Game] {
        print("You will now get a list of all the available games Bro.")
        var gameArrayNew = [Game]()
        for game in gameArray {
            if game.checkedIn == true {
                gameArrayNew.append(game)
            }
            
        }
        
        print(gameArrayNew)
        
        return gameArrayNew
    }
    
    
    func listAvailableGames() {
        for game in getAvailableGames() {
            print(game.title)
        }
        
    }
    
    
    func checkGameOut() {
        
        let availableGames = getAvailableGames()
        
        for index in 0..<availableGames.count {
            print("\(index).\(availableGames[index].title)")
        }
        
        print("Please enter the index of the game you wish to check out: ")
        
        
        var index: Int? = nil
        
        
        repeat {
            
            var userInput = Int(readLine()!)
            
            
            while userInput == nil {
                print("Invalid input. Please enter a valid index.")
                userInput = Int(readLine()!)
            }
            
            if userInput! >= 0 && userInput! < availableGames.count {
                
                index = userInput!
            } else {
                
                print("Invalid input. Please enter a valid index.")
            }
        } while index == nil
        
        
        availableGames[index!].checkedIn = false
        
        
        
    }
    
    func checkGameIn() {
        let unavailableGames = getUnavailableGames()
        for index in 0..<unavailableGames.count {
            print("\(index). \(gameArray[index].title)")
        }
        
        print("Please enter the index of the game you wish to check in:")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input, Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        
        gameArray[userInput!].checkedIn = true
        
        gameArray[userInput!].duedate = nil
    }
}



