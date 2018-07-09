//
//  ListViewTableViewCell.swift
//  SoalNo2
//
//  Created by Jeri Purnama Maulid on 07/07/18.
//  Copyright © 2018 Jeri Purnama Maulid. All rights reserved.
//

import UIKit

class ListViewTableViewCell: UITableViewCell {
    @IBOutlet weak var labelList: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
