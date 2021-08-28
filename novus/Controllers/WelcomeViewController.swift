//
//  WelcomeViewController.swift
//  novus
//
//  Created by Raed Ibrahim on 8/27/21.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeAnnieLabel: UILabel!
    
    @IBOutlet weak var annieIcon: UIImageView!
    
    @IBOutlet weak var welcomeAnnie2Label: UILabel!
    
    @IBOutlet weak var welcomeAnnie3Label: UILabel!
    
    @IBOutlet weak var welcomeAnnieDisclaimerLabel: UILabel!
    
    @IBOutlet weak var startChatButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()

    }
    
    func setUpElements(){
        Utilities.styleFilledButton(startChatButton)
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
