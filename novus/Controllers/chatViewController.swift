//
//  ChatViewController.swift
//  novus
//
//  Created by Raed Ibrahim on 8/27/21.
//

import UIKit

class ChatViewController: UIViewController {

    
    @IBOutlet weak var chatView: UIView!
    
    @IBOutlet weak var chatTextField: UITextField!
    @IBOutlet weak var sendMessageButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func moveUpElements(_ n: CGFloat) {
        let v = self.chatView.subviews
        if (v.count>=0) {
            for subv in v {
                subv.frame.origin.y = subv.frame.origin.y - n
            }
        }
    }
    
    
    func addNewChat(_ actor: Int, _ text: String) {
        moveUpElements(72)
        
        let label = UITextView(frame: CGRect(x: 0, y: 0, width: 320, height: 52))
        label.textContainerInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10);
        label.font = .systemFont(ofSize: 18)
            //UIFont(name: label.font?.fontName ?? "System", size: 36)
        
        let xActor = CGFloat(actor * 80) + 150
        label.center = CGPoint(x: xActor, y: 690)
        var bgColor: UIColor?
        if (actor==1) {
            bgColor = UIColor(red:0.87, green:0.50, blue: 0, alpha: 1.0)
        } else {
            bgColor = UIColor(red:0, green:0, blue: 0.77, alpha: 1.0)
        }
        label.backgroundColor = bgColor
        label.textColor = .white
        if actor==1 {
            label.textAlignment = .right

        } else {
            label.textAlignment = .left

        }
        label.text = text
        self.chatView.addSubview(label)
    }
    

    @IBAction func tappedSendMessageButton(_ sender:  UIButton) {
        guard let message = self.chatTextField!.text else {
            return
        }
        if message > "" {
            addNewChat(1, message)
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
