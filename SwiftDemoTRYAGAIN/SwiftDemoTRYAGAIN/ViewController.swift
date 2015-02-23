//
//  ViewController.swift
//  SwiftDemoTRYAGAIN
//
//  Created by AustinJ on 2/22/15.
//  Copyright (c) 2015 Austin Jackson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var toggler: UISegmentedControl!
    @IBOutlet weak var userInputField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    /*
    
    ^^^
    |||
    
    Ok, so, in Swift code, there is absolutely no 
    specifics to how the UI elements are linked to
    the storyboard. It's all behind the scenes and GUI
    based, I think. Well, that confused me at first.

    */
    
    
    @IBAction func toggleChanged(sender: UISegmentedControl) {
        
        //When the SegmentedControl is changed, change the text displayed on the button
        
        if sender.selectedSegmentIndex == 0 {
            self.submitButton.setTitle("Get First", forState: .Normal)
        }
        else {
            self.submitButton.setTitle("Get Last", forState: .Normal)
        }
        
    }
    
    @IBAction func doSubmit(sender: UIButton) {
        
        //When the button is pressed, relieve the keyboard and update the label
        
        self.userInputField.resignFirstResponder()
        
        //Ok, Swift, I tried to do something like String.indexOf() from Java but I guess not!
        resultLabel.text = userInputField.text
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.userInputField.resignFirstResponder()
    }
    
}

