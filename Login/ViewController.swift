//
//  ViewController.swift
//  Login
//
//  Created by Loc Tran on 2/7/17.
//  Copyright © 2017 LocTran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_username: UITextField!
    @IBOutlet weak var tf_password: UITextField!
    
    var users = ["player1":"pwPlayer1","player2":"pwPlayer2","player3":"pwPlayer3"]
    
    
    @IBAction func button_login(_ sender: Any) {
        if let password = users[tf_username.text!]{
            if password == tf_password.text{
                txtview_display.text = String("Login succeed")
                print("Login succeed")
            }else{
                txtview_display.text = String("Invalid password")
                print("Invalid password")
            }
        }else{
            txtview_display.text = String("Invalid account")
            print("Invalid account")
        }
    }
    
    @IBAction func button_accounts(_ sender: Any) {
        var fullDict = ""
        for (x, y) in users{
            fullDict += "(\(x): \(y))\n"
            txtview_display.text = fullDict
        }
    }
    
    @IBAction func button_add(_ sender: Any) {
        if let password = users[tf_username.text!]{
            txtview_display.text = String("Username is already exist")
            print("Username is already exist")
        }else{
            users[tf_username.text!] = tf_password.text
        }
    }
    
    
    @IBAction func button_remove(_ sender: Any) {
        if let password = users[tf_username.text!]{
            users[tf_username.text!] = nil
        }else{
            txtview_display.text = String("Account is not valid for removal")
            print("Account is not valid for removal")
        }
    }
    
    
    @IBOutlet weak var txtview_display: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

