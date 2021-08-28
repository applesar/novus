//
//  ChatViewController.swift
//  novus
//
//  Created by admin on 2021-08-28.
//

import UIKit
import Alamofire

class ChatViewController: UIViewController {

    @IBOutlet weak var chatView: UIView!
    @IBOutlet weak var chatTextField: UITextField!
    @IBOutlet weak var sendMessageButton: UIButton!
    
    var annieResponses: Responses?
    let baseURL = "https://www.pasakay-puv.net/get_response.php?"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getResponse(chat: "" )
    }
    
    func annieReply() {
        var message: String
        switch (lang) {
        case .ph:
            message = annieResponses?.list[0].response ?? ""
        case .en:
            message = annieResponses?.list[0].response2 ?? ""
         default:
            message = annieResponses?.list[0].response3 ?? ""
        }
        addNewChat(0, message)
    }
    
    func getResponse(chat: String) {
        let chatEncoded = chat.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        
        var from: String
        if let ff = (annieResponses?.list[0].id) {
            from = ff
        } else {
            from = "0"
        }
        	
        let url = baseURL + "l=wjc934wh&fid=\(from)&k1=" +  chatEncoded + "&k2=" + chatEncoded
        print(url)
        AF.request(url)
            .validate()
            .responseDecodable(of: (Responses?.self)) { (response) in guard let responsList = response.value else {
                   print("Error")
                return }
                self.annieResponses = responsList
                print(self.annieResponses?.list ?? "")
                self.annieReply()
            }
    }
    
    func moveUpElements(_ n: CGFloat) {
        let v = self.chatView.subviews
        if (v.count>=0) {
            for subv in v {
                subv.frame.origin.y = subv.frame.origin.y - n
            }
        }
    }
    
    func adjustUITextViewHeight(arg : UITextView)
    {
        arg.translatesAutoresizingMaskIntoConstraints = true
        arg.sizeToFit()
        arg.isScrollEnabled = false
    }
    
    func addNewChat(_ actor: Int, _ text: String) {
        moveUpElements(122)
        
        let label = UITextView(frame: CGRect(x: 0, y: 0, width: 320, height: 102))
        label.textContainerInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10);
        label.font = .systemFont(ofSize: 18)
            //UIFont(name: label.font?.fontName ?? "System", size: 36)
        
        let xActor = CGFloat(actor * 70) + 180
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
        label.layer.cornerRadius = label.frame.height/3
        
        //adjustUITextViewHeight(arg: label)
        self.chatView.addSubview(label)
    }
    

    @IBAction func tappedSendMessage(_ sender: UIButton) {
        guard let message = self.chatTextField!.text else {
            return
        }
        if message > "" {
            addNewChat(1, message)
            self.chatTextField.text = ""
        }
        getResponse(chat: message)
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
