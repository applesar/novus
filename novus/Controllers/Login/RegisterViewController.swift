//
//  RegisterViewController.swift
//  novus
//
//  Created by Raed Ibrahim on 8/27/21.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var signup1Label: UILabel!
    
    @IBOutlet weak var signup2Label: UILabel!
    
    
    @IBOutlet weak var signUpTextView: UIView!
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var termsLabel: UILabel!
    
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBAction func signUpTapped(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()

    }
    
    func setUpElements(){
        
        //Hide the error label
        errorLabel.alpha = 0;
        
        //style the elemetes
        Utilities.styleTextField(firstNameTextField)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHeadingLabel(signup1Label, content: "Create a New Account")
        Utilities.styleUnderlineButton(loginButton, text: "Already Have an Account? Login")

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
