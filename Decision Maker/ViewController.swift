//
//  ViewController.swift
//  Decision Maker
//
//  Created by John Zhou on 2019-09-14.
//  Copyright © 2019 John Zhou. All rights reserved.
//

import UIKit

func changeDecision() -> String {
    let number = Int.random(in: 0...1)
    
    if(number == 0){
        return "Yes."
    }else{
        return "No."
    }
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var decisionLabel: UILabel!
    
    
    @IBAction func onTap(_ sender: Any) {
        decisionLabel.text = changeDecision()
    }
    
}

