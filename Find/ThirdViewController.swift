//
//  ThirdViewController.swift
//  Find
//
//  Created by etudiant on 05/09/2018.
//  Copyright © 2018 WeDevTogether. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var ConfirmPassword: UITextField!
    
    @IBOutlet weak var img: UIImageView!
    
    
    func isValid(InputEmail:String) -> Bool {
        let EmailReGex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        
        let EmailTest = NSPredicate(format:"SELF MATCHES[c] %@", EmailReGex)
        
        let result = EmailTest.evaluate(with: InputEmail)
        
        return result
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hj.jpg")!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func register(_ sender: Any) {
        
        if(self.Email.text != nil && self.Password.text == ConfirmPassword.text ){
   
            
            self.performSegue(withIdentifier: "connect", sender: self)
        }
        
        if ConfirmPassword.text == Password.text {
        
        } else {
            
            //Passwords dont match
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
