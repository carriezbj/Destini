//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    var storyComplete : Bool = false
    

    
    // TODO Step 5: Initialise instance variables here
    
    var pointer : Story? = MyStoryBoard().head
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        updateView()
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        if storyComplete{
        let alert = UIAlertController(title: "End of Game", message: "You've reached end of game, do you want to start over?", preferredStyle: .alert)
        
        let restartAction = UIAlertAction(title: "Yes", style: .default) { (UIAlertAction) in
            self.startOver()
        }
        alert.addAction(restartAction)
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
        present(alert,animated: true,completion: nil)
        } else if(sender.tag == 1){
            pointer = pointer?.Story1
            updateView()
        }else{
            pointer = pointer?.Story2
            updateView()
        }
        storyComplete = pointer == nil ? true : false
        
    }
    
    func updateView(){
        if pointer == nil{
            return
        }
        storyTextView.text = pointer?.storyText
        topButton.setTitle(pointer?.answer1, for: .normal)
        bottomButton.setTitle(pointer?.answer2, for: .normal)
    }
    
    func startOver(){
        pointer = MyStoryBoard().head
        storyComplete = false
        updateView()
    }


}

