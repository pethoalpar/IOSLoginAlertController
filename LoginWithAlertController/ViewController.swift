//
//  ViewController.swift
//  LoginWithAlertController
//
//  Created by Petho Alpar on 15/02/2017.
//  Copyright © 2017 Petho Alpar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doLogin(_ sender: Any) {
        
        let userName = userNameField.text
        let password = passwordField.text
        
        let alertController = UIAlertController(title: "Login Status", message: userName == "demo" && password == "demo" ? "Success" : "Failed", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController,animated: true, completion: nil)
    }

}

