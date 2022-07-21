//
//  loginViewController.swift
//  factyl
//
//  Created by Scholar on 7/20/22.
//

import UIKit

class loginViewController: UIViewController {


    @IBOutlet weak var error: UILabel!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var user: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if password.text!.count == 0 || user.text!.count == 0{
            error.text = "*error: missing fields"
        }
        else if password.text! == "manropekwk22" && user.text! == "financeperson"{
            performSegue(withIdentifier: "loggedIn", sender: Any?.self)
        }
        else{
            error.text = "username or password does not exist"
            }
    }
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


