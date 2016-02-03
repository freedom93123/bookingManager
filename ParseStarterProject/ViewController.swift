/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var username: UITextField!
    
    @IBOutlet var `switch`: UISwitch!
    
    @IBOutlet var driverlabel: UILabel!
    
    @IBOutlet var riderlabel: UILabel!

    @IBOutlet var password: UITextField!
    
    func displayAlert(title:String, message:String){
        if #available(iOS 8.0, *) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion:nil)
        } else {
            // Fallback on earlier versions
        }

    }
    
    @IBAction func signup(sender: AnyObject) {
        if username.text == "" || password.text == "" {
                
            displayAlert("Missing Field(s)", message: "Username and password are required")
        } else {
            
        }
    }
        
    
    @IBOutlet var signUpButton: UIButton!
    
    @IBAction func login(sender: AnyObject) {
    }
    
    @IBOutlet var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.username.delegate = self
        self.password.delegate = self
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}

