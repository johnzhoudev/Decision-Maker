//
//  ViewController.swift
//  Decision Maker
//
//  Created by John Zhou on 2019-09-14.
//  Copyright © 2019 John Zhou. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return self.style
    }
    var style:UIStatusBarStyle = .default
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeDecision() -> String {
        let number = Int.random(in: 0...1)
        
        if(number == 0){
            self.view.backgroundColor = UIColor.white
            decisionLabel.textColor = UIColor.black
            instructionLabel.textColor = UIColor.black
            self.style = .default
            
            setNeedsStatusBarAppearanceUpdate()
            
            return "Yes."
            
        }else{
            self.view.backgroundColor = UIColor.black
            decisionLabel.textColor = UIColor.white
            instructionLabel.textColor = UIColor.white
            self.style = .lightContent
            
            
            setNeedsStatusBarAppearanceUpdate()

            return "No."
        }
        
    }

    @IBOutlet weak var decisionLabel: UILabel!
    
    @IBOutlet weak var instructionLabel: UILabel!
    
    @IBAction func onTap(_ sender: Any) {
        
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
        
        decisionLabel.text = changeDecision()
        
        
    }
    
   
    
}

