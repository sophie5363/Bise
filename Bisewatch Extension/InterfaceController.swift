//
//  InterfaceController.swift
//  Bisewatch Extension
//
//  Created by Sophie Jacquot  on 05/06/2021.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController, WCSessionDelegate {
  
    
    @IBOutlet weak var imageBise: WKInterfaceImage!
    
    @IBOutlet weak var labelShowMessage: WKInterfaceLabel!
    var session = WCSession.default
    
    override func awake(withContext context: Any?) {
        session.delegate = self
        session.activate()
        imageBise.setHidden(true)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

    @IBAction func btnSendToPhone() {
        let dic: [String : Any] = ["watch" : "Hello iPhone" as Any]
        session.sendMessage(dic, replyHandler: nil, errorHandler: nil)
    }
    
    //MARK: - SESSION DELEGATE
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("Message from iPhone: \(message)")
        DispatchQueue.main.async {
            if let value = message["iPhoneMsg"] as? String
            {
                self.labelShowMessage.setText(value)
                self.imageBise.setHidden(false)
            }
        }
    }
    
}
