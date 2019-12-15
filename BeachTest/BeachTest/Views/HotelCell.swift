//
//  HotelCell.swift
//  BeachTest
//
//  Created by Alex on 15/12/2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class HotelCell: UITableViewCell {

    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblHotelLocation: UILabel!
    @IBOutlet weak var lblHotelName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
