//
//  ViewController.swift
//  TwilioAlamofireSMS
//
//  Created by Zel Marko on 16/12/15.
//  Copyright © 2015 devxhkl. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    sendSMS()
  }
  
  func sendSMS() {
    let parameters = [
      "To": "RECEIVER PHONE NUMBER",
      "From": "YOUR TWILIO NUMBER",
      "Body": "MESSAGE",
      "MediaUrl": "URL"]
    
    Alamofire.request(.POST, "https://TWILIO SID:TWILIO AUTH TOKEN@api.twilio.com/2010-04-01/Accounts/TWILIO SID/Messages", parameters: parameters).response { response in
      print(response.0)
      print(response.1)
      print(response.2)
      print(response.3)
    }
  }
}

