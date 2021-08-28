//
//  NewConversationViewController.swift
//  novus
//
//  Created by Raed Ibrahim on 8/27/21.
//

import UIKit

class NewConversationViewController: UIViewController {

    
    @IBOutlet weak var yesButton: UIButton!
    
    @IBOutlet weak var noButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()

        // Do any additional setup after loading the view.
    }
    func setUpElements(){
        let r = self.yesButton.frame.height/4
        self.yesButton.layer.cornerRadius = r
        self.noButton.layer.cornerRadius = r

    }

    @IBAction func tappedYesButton(_ sender: UIButton) {
        if sender.tag==2201 {
            anonymous = 0
        } else {
            anonymous = 1
        }
        performSegue(withIdentifier: "AnnieChatSegue", sender: nil)
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
