//
//  AdminPanelViewController.swift
//  StudentManagementSystem
//
//  Created by Rajiv Shrestha on 10/30/18.
//  Copyright © 2018 Flaresight Pvt. Ltd. All rights reserved.
//

import UIKit

class AdminPanelViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func SignIn_Btn(_ sender: Any) {
        
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let VC = sb.instantiateViewController(withIdentifier: "Main")
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
}
