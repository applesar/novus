//
//  ViewController.swift
//  novus
//
//  Created by admin on 2021-08-26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var annieButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpElements()
    }
    
    func setUpElements(){
        
        Utilities.styleFilledButton(signupButton)
        Utilities.styleHollowButton(loginButton)
        Utilities.styleFilledButton(annieButton)
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        let isLoggedIn =  UserDefaults.standard.bool(forKey: "logged_in")
//
//        if !isLoggedIn {
//            let vc = storyboard?.instantiateViewController(identifier: "welcome_vc") as! WelcomeViewController
//            let nav = UINavigationController(rootViewController: vc)
//            nav.modalPresentationStyle = .fullScreen
//            present(nav, animated: false)
//        }
//    }

}

