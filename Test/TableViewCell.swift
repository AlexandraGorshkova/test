//
//  TableViewCell.swift
//  Test
//
//  Created by Alexandra Gorshkova on 11.07.2018.
//  Copyright © 2018 Alexandra Gorshkova. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var finishhh: UILabel!
    @IBOutlet weak var starttt: UILabel!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
