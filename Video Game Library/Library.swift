//
//  Library.swift
//  Video Game Library
//
//  Created by Sawyer Cherry on 9/4/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import Foundation

class Library {
    
    // An array of game objects that will be handled by this class
    private var gameArray: [Game] = [Game(title: "FarCry 5"), Game(title: "GTA V"), Game(title: "Fortnite"), Game(title: "Skyrim: The Elder Scrolls"), Game(title: "Farming Simulator 17")]
    //MARK:- Functions
    func addGame() {
        // TODO:- Add functionality to addmamnew game to the gameArray
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
        
    
    func checkGamesOut() {
        
    }
    
    func listAvailibleGames() {
        gameArray[0].checkedIn = false
        
        for game in gameArray {
            if game.checkedIn {
                print(game.title)
            }
    }
}
    func listUnavailibleGames() {
     

        }

}
