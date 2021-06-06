//
//  TutoComMontreViewController.swift
//  Bise
//
//  Created by Sophie Jacquot  on 05/06/2021.
//

import UIKit
import WatchConnectivity

class TutoComMontreViewController: UIViewController, WCSessionDelegate {
 
    

    @IBOutlet weak var labelWatchMessage: UILabel!
    var session : WCSession?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if WCSession.isSupported() {
            session = WCSession.default
            session?.delegate = self
            session?.activate()
        }
        

    }
    
    
    @IBAction func btnConnectWatch(_ sender: Any) {
        if let validSession = self.session, validSession.isReachable {
            let dic : [String : Any] = ["iPhoneMsg" : "Hello Watch" as Any]
            validSession.sendMessage(dic, replyHandler: nil, errorHandler: nil)
        }
    }
    
    // MARK :  - Session Delegate
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("Message from Watch: \(message)")
        DispatchQueue.main.async {
            if let value = message["watch"] as? String
            {
                self.labelWatchMessage.text = value
            }
        }
    }
    
    

}
