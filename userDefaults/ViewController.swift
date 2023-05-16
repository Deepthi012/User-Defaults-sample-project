//
//  ViewController.swift
//  userDefaults
//
//  Created by West Agile Labs on 19/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //retriveDetails()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        
        UserDefaults.standard.set(nameText.text, forKey: "Name" )
        UserDefaults.standard.set(emailText.text, forKey: "Email")
        UserDefaults.standard.set(passwordText.text, forKey: "Password" )
        retriveDetails()
        
    }
    
    
    
    func retriveDetails(){
        
        let name = UserDefaults.standard.string(forKey: "Name" )
        let email = UserDefaults.standard.string(forKey: "Email" )
        let password = UserDefaults.standard.string(forKey: "Password")
        
       print("Your name is \(name!), your email is \(email!), your password is \(password!)")
    }
   
}


