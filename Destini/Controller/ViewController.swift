//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        
        storyBrain.updateStory(sender.currentTitle!)
        updateView()
    }
    
    
    func updateView(){
        storyLabel.text = storyBrain.getStory()
        choice1Button.setTitle(storyBrain.getChoiceOne(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoiceTwo(), for: .normal)
        
    }

}

