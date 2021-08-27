//
//  LoginViewController.swift
//  novus
//
//  Created by Raed Ibrahim on 8/27/21.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var siriImageView: UIImageView!
    
    @IBOutlet weak var welcomeLabel2: UILabel!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    @IBOutlet weak var loginOptionsLabel: UILabel!
    
    @IBOutlet weak var appleLoginButton: UIButton!
    
    @IBOutlet weak var googleLoginButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        
        //Hide the error label
        errorLabel.alpha = 0;
        
        //Style the elements
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(loginButton)
        Utilities.styleLoginMethodButton(googleLoginButton, icon: "iconGoogle2.png")
        Utilities.styleLoginMethodButton(appleLoginButton, icon: "iconApple2.png")
        Utilities.styleUnderlineButton(signUpButton, text: "Create An Account")

        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func loginTapped(_ sender: Any) {
    }
    
}
