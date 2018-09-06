//
//  ViewController.swift
//  Find
//
//  Created by etudiant on 04/09/2018.
//  Copyright © 2018 WeDevTogether. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var roundedCorner: UIButton!
    @IBOutlet weak var roundedCornerButton: UIButton!
    @IBOutlet weak var craig: UIImageView!
    @IBOutlet var mView: UIView!
    @IBAction func switc(_ sender: UISwitch) {
        if sender.isOn{
            craig.image = UIImage(named: "hj")
        }else{
            craig.image = UIImage(named: "hh")
        }
    }
    @IBOutlet weak var test: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hh")!)
        
        roundedCornerButton.layer.cornerRadius = 6
        roundedCorner.layer.cornerRadius = 6
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

