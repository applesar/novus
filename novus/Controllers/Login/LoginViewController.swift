//
//  LoginViewController.swift
//  novus
//
//  Created by Raed Ibrahim on 8/27/21.
//

import UIKit
import Firebase


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
    
    func validateFields() -> String? {
        
        // Check that all fields are filled in
        if  emailTextField .text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField .text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields."
        }
        
        // Check if the password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            // Password isn't secure enough
            return "Uh oh! Forgot password?"
        }

        return nil
    }
    
    func showError(_ message:String){
        
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        
        // Validate Text Fields
        let error = validateFields()
        
        if error != nil{
            showError(error!)
        }
        else {
            // Create cleaned versions of the text field
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Signing in the user
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    // Couldn't sign in
                    self.errorLabel.text = error!.localizedDescription
                    self.errorLabel.alpha = 1
                }
                else {
                    
                    let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                    
                    self.view.window?.rootViewController = homeViewController
                    self.view.window?.makeKeyAndVisible()
                }
            }
        }

    }
    
}
