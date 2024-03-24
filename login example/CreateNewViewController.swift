//
//  CreateNewViewController.swift
//  login example
//
//  Created by Anil Mainali on 18/3/24.
//

import UIKit
import Firebase

class CreateNewViewController: UIViewController {

    @IBOutlet weak var EmailTextfield: UITextField!
    @IBOutlet weak var PasswordTextFields: UITextField!
    @IBOutlet weak var ConfimTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CreateNewAxtion(_ sender: UIButton) {
        guard let email = EmailTextfield.text else {return}
        guard let password = PasswordTextFields.text else {return}
        
        Auth.auth().createUser(withEmail: email, password: password) { firebaseResult, error in
            if let e = error
            {
                print("error")
            }
            else{
                self.performSegue(withIdentifier:"goToNext", sender:self)
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

}
