//
//  Menu.swift
//  Video Game Library
//
//  Created by Sawyer Cherry on 8/30/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import Foundation

class Menu {
    var shouldQuit = false
    
    let library = Library()
    
    
    func help() {
        print("""
            Menu
            1 Add Game
            2 Remove Game
            3 List Available Games
            4 Check Out Games
            5 Check In Games
            6 List Checked Out Games
            7 Help
            8 Quit
            
            """)
    }
    
    func go() {
        help()
        repeat {
            var input = getInput()
            while validateInput(input) == false {
                print("Invalid Input")
                input = getInput()
            }
            handleInput(input)
        } while !shouldQuit
       
            var input = getInput()
            
            while validateInput(input) == false {
                print("Invalid Input")
                input = getInput()
            }
            
        
    }
    
    func handleInput(_ input: String) {
        switch input {
        case "1":
            library.addGame()
            help()
        case "2":
           library.removeGame()
            help()
        case "3":
            library.listAvailibleGames()
            help()
        case "4":
            print("Check out game not implemented yet")
        case "5":
            print("Check in game not iplemented yet")
        case "6":
            print("lest checked out games not implemented yet")
        case "7":
            print("")
        case "8":
            shouldQuit == true
        default:
            break
        }
    }
    func validateInput(_ input: String) -> Bool {
        let menuOptions = Array(1...8)
        
        guard let number = Int(input) else { return false }
        
        return menuOptions.contains(number)
    }
    
    func getInput() -> String {
        var input: String? = nil
        
        repeat {
            
            let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            if line != "" {
                input = line
            } else {
                print("Invalid Input.")
            }
        } while input == nil
        
        return input!
    }
}







