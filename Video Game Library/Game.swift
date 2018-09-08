//
//  Game Class.swift
//  Video Game Library
//
//  Created by Sawyer Cherry on 9/4/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import Foundation

// This is the data model tha represents our games that will be stored in the library.
class Game {
   // this will store the title of the game
   var title: String

    // We are going to set this to true by default so that when we make a new game it will assume that it is checked in.
    var checkedIn = true

    // This is optional because if a game isnt checked out then it should not have a due date.
    var duedate: Date?

    // Since checkedIn is a default value the only thing that we have to initialize is the title
    init(title: String) {
        self.title  = title
        
    }
}
