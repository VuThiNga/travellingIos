//
//  HomeViewController.swift
//  TravellingProject
//
//  Created by Admin on 11/25/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    @IBOutlet weak var cllFriend: UICollectionView!
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
        self.tblPlace.delegate = self
        self.tblPlace.dataSource = self
        self.cllFriend.dataSource = self
        self.cllFriend.delegate = self
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
        self.tblPlace.register(UINib(nibName: "PlaceTableViewCell", bundle: nil), forCellReuseIdentifier: "PlaceTableViewCell")
        //collection view
        self.cllFriend.register(UINib(nibName: "SuggestFriendCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SuggestFriendCollectionViewCell")
    }
    
}

extension HomeViewController :UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceTableViewCell", for: indexPath) as! PlaceTableViewCell
        cell.imgPlace.image = UIImage(named: "img")
        cell.lblAddPlace.text = "Hà Nội, Việt Nam"
        cell.lblTagPlace.text = "#hoguom"
        cell.lblDesPlace.text = "Địa điểm ăn uống"
        cell.lblPlace.text = "Hồ Gươm"
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HeaderPlaceTableViewCell", owner: self, options: nil)?.first as! HeaderPlaceTableViewCell
        if(section == 1){
            headerView.lblNameSection.text = "Danh lam thắng cảnh".uppercased()
        }else{
            headerView.lblNameSection.text = "Địa điểm ăn uống".uppercased()
        }
        
        return headerView
    }
}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SuggestFriendCollectionViewCell", for: indexPath) as! SuggestFriendCollectionViewCell
        cell.lblName.text = "Đại học Bôn Ba"
        return cell
    }
}
