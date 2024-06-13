//
//  BlogTableViewCell.swift
//  tableFinal
//
//  Created by E5000846 on 05/06/24.
//

import UIKit

protocol BlogTableViewCellDelegate: AnyObject {
    func presentAlert(from cell: BlogTableViewCell)
}



class BlogTableViewCell: UITableViewCell {
    
    static var identifier = "BlogTableViewCell"
    
    @IBOutlet weak var blogImage: UIImageView!
    
    
    @IBOutlet weak var blogDesc: UILabel!
    
    
    @IBAction func moreInfoBtn(_ sender: UIButton) {
        delegate?.presentAlert(from: self)
    }

    @IBOutlet weak var nameLb: UILabel!
    
    weak var delegate: BlogTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
  
}
