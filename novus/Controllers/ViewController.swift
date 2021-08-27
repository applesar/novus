//
//  ViewController.swift
//  novus
//
//  Created by admin on 2021-08-26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn =  UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = storyboard?.instantiateViewController(identifier: "welcome_vc") as! WelcomeViewController
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }

}

