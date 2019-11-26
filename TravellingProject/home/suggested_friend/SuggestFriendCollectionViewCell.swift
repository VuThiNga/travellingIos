//
//  SuggestFriendCollectionViewCell.swift
//  TravellingProject
//
//  Created by Admin on 11/26/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class SuggestFriendCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblUN: UILabel!
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var btnAddFr: UIButton!
    @IBOutlet weak var btnFollow: UIButton!
    @IBAction func btnAdd(_ sender: UIButton) {
    }
    @IBAction func btnFollow(_ sender: UIButton) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        btnAddFr.layer.cornerRadius = 6
        btnFollow.layer.cornerRadius = 6
    }

}
