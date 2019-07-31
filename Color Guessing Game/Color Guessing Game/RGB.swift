//
//  RGB.swift
//  Color Guessing Game
//
//  Created by Michelle Cueva on 7/30/19.
//  Copyright © 2019 Michelle Cueva. All rights reserved.
//

import Foundation
import UIKit


struct Color {

    private var myResult = RandomColor()
    
    
    static func RandomColor() -> (randomColor: UIColor, dominant: UIColor) {
        
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        let dominant: UIColor
        
        if max(red, green, blue) == red {
            dominant = UIColor.red
        } else if max(red, green, blue) == green {
            dominant = UIColor.green
        } else {
            dominant = UIColor.blue
        }
        return (randomColor, dominant)
    }
    
    func getMyColor() -> UIColor {
        return self.myResult.randomColor
    }
    
    func getDominantColor() -> UIColor {
        return self.myResult.dominant
    }
    
    }
    
    
    

    
    
    
    



