//
//  NameTableViewCell.swift
//  tableFinal
//
//  Created by E5000846 on 05/06/24.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    static let identifier = "NameTableViewCell"
    
    @IBOutlet weak var nameLB: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
