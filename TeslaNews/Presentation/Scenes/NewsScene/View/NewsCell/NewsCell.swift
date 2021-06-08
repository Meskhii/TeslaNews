//
//  NewsCell.swift
//  TeslaNews
//
//  Created by Admin on 08.06.2021.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var newsAuthorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
