//
//  PersonCell.swift
//  Day5
//
//  Created by Bradley Johnson on 3/10/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {

  @IBOutlet weak var personImageView: UIImageView!
  @IBOutlet weak var personLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
