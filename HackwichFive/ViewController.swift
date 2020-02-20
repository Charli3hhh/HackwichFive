//
//  ViewController.swift
//  HackwichFive
//
//  Created by CM Student on 2/20/20.
//  Copyright © 2020 Charles Ombao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstLabel: UILabel!
   
    @IBOutlet weak var SecondLabel: UILabel!
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    var currentIndex = 0
    
    var favoriteFoodArray = ["Pasta", "Adobo", "Sinigang", "Fried Chicken", "Steak"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.FirstLabel.text = "My Favorite Food"
        
        
    }
    //comment 1: created an IBAction to execute a series of tasks (lines of code) upon button press
    @IBAction func buttonPressed(_ sender: Any){
        //comment 2: In order for the buttom label to change into one of the favorite foods, we must change the text in code and set it to the variable "favoriteFoodArray" and its current Index which is 0.
        self.SecondLabel.text = favoriteFoodArray[currentIndex]
        // comment 3: Establish an If statement which detemines whether the statement is true or false. Since the currentIndex is 0 and all the other arrays are greater than 0, therefore it is true.
        if self.currentIndex < self.favoriteFoodArray.count
        {
            //comment 4: Since our if statement is true, once we press the button, it adds 1, changing it through different favorite food.
            currentIndex+=1
            //comment 5: We created a code which changes the text name of the button to "Next" each time we press on it.
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
        }
        else
        {
            //comment 6: created a code which disables the button once every food were accessed in the array.
            (sender as! UIButton).isEnabled = false
        }
    }
    
}


