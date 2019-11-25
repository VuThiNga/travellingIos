//
//  PlaceCell.swift
//  TravellingProject
//
//  Created by Admin on 11/25/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class PlaceCell: UITableViewCell {

    @IBOutlet weak var imgPlace: UIImageView!
    @IBOutlet weak var lblTag: UILabel!
    @IBOutlet weak var lblDes: UILabel!
    @IBOutlet weak var lblNamePlace: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBAction func btnInfo(_ sender: UIButton) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
}
