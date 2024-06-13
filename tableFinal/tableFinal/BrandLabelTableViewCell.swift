//
//  BrandLabelTableViewCell.swift
//  tableFinal
//
//  Created by E5000846 on 05/06/24.
//

import UIKit

class BrandLabelTableViewCell: UITableViewCell {
    static let identifier = "BrandLabelTableViewCell"

    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
