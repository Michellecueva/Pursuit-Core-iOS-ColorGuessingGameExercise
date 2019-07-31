//
//  Counter.swift
//  Color Guessing Game
//
//  Created by Michelle Cueva on 7/30/19.
//  Copyright © 2019 Michelle Cueva. All rights reserved.
//

import Foundation
import UIKit

struct Counter {
    
    var currentScore = 0 {
        didSet{
            if self.currentScore > self.Highscore {
                self.Highscore = self.currentScore
            }
        }
    }
    
    var Highscore = 0
    
    mutating func addToCurrentScore() {
        currentScore += 1
    }
    
    mutating func resetCurrentScore() {
        currentScore = 0
    }
    
  
}
