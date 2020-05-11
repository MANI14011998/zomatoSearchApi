//
//  TableViewCell.swift
//  xyz
//
//  Created by MANINDER SINGH on 09/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
