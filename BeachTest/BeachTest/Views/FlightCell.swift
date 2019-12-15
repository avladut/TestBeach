//
//  FlightCell.swift
//  BeachTest
//
//  Created by Alex on 15/12/2019.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class FlightCell: UITableViewCell {

    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblArrivalDate: UILabel!
    @IBOutlet weak var lblDepartureDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
