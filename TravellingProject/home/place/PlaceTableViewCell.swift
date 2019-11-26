//
//  PlaceTableViewCell.swift
//  TravellingProject
//
//  Created by Admin on 11/26/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var imgPlace: UIImageView!
    @IBOutlet weak var lblTagPlace: UILabel!
    @IBOutlet weak var lblDesPlace: UILabel!
    @IBOutlet weak var viewTotal: UIStackView!
    
    @IBOutlet weak var lblAddPlace: UILabel!
    @IBOutlet weak var lblPlace: UILabel!
    
    @IBOutlet weak var btnInfo: UIButton!
    @IBAction func btnInfoPlace(_ sender: UIButton) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        btnInfo.layer.cornerRadius = 6
        //khong duoc
        viewTotal.layer.cornerRadius = 6
        viewTotal.layer.borderWidth = 1
        viewTotal.layer.shadowRadius = 3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
