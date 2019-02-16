//
//  ViewController.swift
//  swoosh
//
//  Created by Amir on 2/13/19.
//  Copyright © 2019 Amir Sharafkar. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player?
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func selectDesiredTapped(sender: UIButton){
        switch sender.tag {
        case 1:
            player?.desiredLeague = "Mens"
            nextButton.isEnabled = true
            
        case 2:
            player?.desiredLeague = "Womwens"
            nextButton.isEnabled = true
        
        case 3:
            player?.desiredLeague = "coed"
            nextButton.isEnabled = true
            
        default: break
            
        }
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        print(player?.desiredLeague ?? "")
        performSegue(withIdentifier: "SkillVC", sender: self)
    }
    

    @IBAction func unwindFromSkillVC(segue: UIStoryboardSegue){
        dismiss(animated: true, completion: nil)
    }

}

