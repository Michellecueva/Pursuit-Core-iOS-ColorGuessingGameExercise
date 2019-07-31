//
//  ViewController.swift
//  Color Guessing Game
//
//  Created by Michelle Cueva on 7/30/19.
//  Copyright © 2019 Michelle Cueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var myCurrentColor = Color()
    
    var counter = Counter()
    
    

    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var colorBox: UIView!
    
    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var blueButton: UIButton!
    
    @IBOutlet weak var newGameButton: UIButton!
    
    @IBOutlet weak var currentScoreInt: UILabel!
    
    @IBOutlet weak var highScoreInt: UILabel!
    
    @IBAction func changeColor(_ sender: UIButton) {
        
    
        switch sender.tag {
        case 0:
            if myCurrentColor.getDominantColor() == UIColor.red {
                counter.addToCurrentScore()
                currentScoreInt.text = "\(counter.currentScore)"
                highScoreInt.text = "\(counter.Highscore)"
                labelText.text = "You win!"
                myCurrentColor = Color()
                 self.colorBox.backgroundColor = myCurrentColor.getMyColor()
            } else {
                labelText.text = "you lose"
                disableButtons()
              
                
            }
        case 1:
            if myCurrentColor.getDominantColor() == UIColor.green {
                counter.addToCurrentScore()
                currentScoreInt.text = "\(counter.currentScore)"
                highScoreInt.text = "\(counter.Highscore)"
                labelText.text = "You win!"
                myCurrentColor = Color()
                self.colorBox.backgroundColor = myCurrentColor.getMyColor()
            } else {
                labelText.text = "you lose"
                disableButtons()
                
                
            }
        case 2:
            if myCurrentColor.getDominantColor() == UIColor.blue {
                counter.addToCurrentScore()
                currentScoreInt.text = "\(counter.currentScore)"
                highScoreInt.text = "\(counter.Highscore)"
                labelText.text = "You win!"
                myCurrentColor = Color()
                self.colorBox.backgroundColor = myCurrentColor.getMyColor()
            } else {
                labelText.text = "You lose \u{1F641} "
                disableButtons()
        
            }
        default:
            print("")
        }

    }
    
    
    @IBAction func resetGame(_ sender: Any) {
        myCurrentColor = Color()
        self.colorBox.backgroundColor = myCurrentColor.getMyColor()
        redButton.isEnabled = true
        blueButton.isEnabled = true
        greenButton.isEnabled = true
        newGameButton.isHidden = true
        labelText.text = "Which color is the sample above closest to?"
        counter.resetCurrentScore()
        currentScoreInt.text = "\(counter.currentScore)"
        highScoreInt.text = "\(counter.Highscore)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorBox.backgroundColor = myCurrentColor.getMyColor()
        newGameButton.isHidden = true
        
    }
    
    func disableButtons(){
        redButton.isEnabled = false
        blueButton.isEnabled = false
        greenButton.isEnabled = false
        newGameButton.isHidden = false
        
    }
    
    

}

