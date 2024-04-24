//
//  ViewController.swift
//  Destini-App-MVC
//
//  Created by doniyor normuxammedov on 24/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLB: UILabel!
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func choiceMade(_ sender: UIButton) {
       
        storyBrain.nextStory(userChoise: sender.currentTitle!)
        updateUI()
   }
    
    func updateUI(){
        storyLB.text = storyBrain.getstoryTitle()
        choice1Btn.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Btn.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}
