//
//  secondViewController.swift
//  Find
//
//  Created by etudiant on 04/09/2018.
//  Copyright © 2018 WeDevTogether. All rights reserved.
//

import UIKit


class secondViewController: UIViewController {
    
    @IBOutlet weak var bbb: UIButton!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var img: UIImageView!
    
    func isValid(InputEmail:String) -> Bool {
        let emailReGex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        

        let emailTest = NSPredicate(format:"SELF MATCHES[c] %@", emailReGex)
        
        let result = emailTest.evaluate(with: email.text!)
        
        return result
    }
    
    func VerifyPassword(InputPassword:String )->Bool{
        let passwordReGex = "[A-Z0-9a-z._%+-]{6,}"
        
        
        let passwordTest = NSPredicate(format:"SELF MATCHES[c] %@", passwordReGex)
        
        let result = passwordTest.evaluate(with: password.text!)
        
            return result
        }
      
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "hh.jpg")!)
        
       bbb.layer.cornerRadius = 6
   
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func connect(_ sender: Any) {
        
        _ = isValid(InputEmail: "email")
        
        _ = VerifyPassword(InputPassword: "password")
        
        if(self.email.text != nil && self.password.text != nil ){
//            let alert = UIAlertController(title: "Invalid", message: "Please enter your email and password", preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
//            self.present(alert, animated:true,completion: nil)

            self.performSegue(withIdentifier: "connect", sender: self)
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
