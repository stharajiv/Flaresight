//
//  ViewController.swift
//  StudentManagementSystem
//
//  Created by Rajiv Shrestha on 10/30/18.
//  Copyright © 2018 Flaresight Pvt. Ltd. All rights reserved.
//

import UIKit
//import Alamofire
//import SVProgressHUD
//import Realm
//import RealmSwift
//import SwiftyJSON


class ViewController: UIViewController {


    // Definition of the Labels
    @IBOutlet weak var Uname: UITextField!
    @IBOutlet weak var UPwd: UITextField!
    @IBOutlet weak var WarMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.setHidesBackButton(true, animated: false)
    }

    
    // SignIn Button
    @IBAction func Btn_SignIn(_ sender: Any) {
        
        if (Uname.text == "admin"){
            let sb = UIStoryboard.init(name: "AdminPanel", bundle: nil)
            let VC = sb.instantiateViewController(withIdentifier: "AdminPanel")
            self.navigationController?.pushViewController(VC, animated: true)
        } else if  (Uname.text == "user"){
            let sb = UIStoryboard.init(name: "UserRegistration", bundle: nil)
            let VC = sb.instantiateViewController(withIdentifier: "UserRegistration")
            self.navigationController?.pushViewController(VC, animated: true)
        } else{
            WarMsg.text = "Invalid Details"
        }

    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        WarMsg.text=""
    }
    
}

