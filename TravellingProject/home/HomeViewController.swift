//
//  HomeViewController.swift
//  TravellingProject
//
//  Created by Admin on 11/25/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tblPlace: UITableView!
    @IBOutlet weak var btnFind: UIButton!
    @IBOutlet weak var btnPost: UIButton!
    @IBAction func btnFind(_ sender: UIButton) {
    }
    @IBAction func btnPost(_ sender: UIButton) {
        let loginRegisterViewController:LoginRegisterViewController = LoginRegisterViewController()
        self.present(loginRegisterViewController, animated: true, completion: nil)
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
    
    func initView(){
        //corner btn
        btnPost.layer.cornerRadius = 6
        btnFind.layer.cornerRadius = 6
        
        //table view
        self.tblPlace.register(UINib(nibName: "PlaceCell", bundle: nil), forCellReuseIdentifier: "PlaceCell")

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath) as! PlaceCell
        cell.imgPlace.image = UIImage(named: "img")
        cell.lblAddress.text = "Hà Nội, Việt Nam"
        cell.lblTag.text = "#hoguom"
        cell.lblDes.text = "Địa điểm ăn uống"
        cell.lblNamePlace.text = "Hồ Gươm"
        return cell
    }
}
