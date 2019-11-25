//
//  LoginRegisterViewController.swift
//  TravellingProject
//
//  Created by Admin on 11/25/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class LoginRegisterViewController: UIViewController {

    @IBOutlet weak var lblAppName: UILabel!
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBAction func btnRegister(_ sender: UIButton) {
    }
    @IBAction func btnLogin(_ sender: UIButton) {
    }
    @IBAction func btnLoginImp(_ sender: UIButton) {
    }
    @IBAction func btnClose(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initView()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func initView() {
        //lblAppName = PaddingLabel(withInsets: 8, 8, 18, 18)
        lblAppName.layer.cornerRadius = 24
    }

}
