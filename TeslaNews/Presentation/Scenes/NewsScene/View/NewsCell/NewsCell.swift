//
//  NewsCell.swift
//  TeslaNews
//
//  Created by Admin on 08.06.2021.
//

import UIKit
import Kingfisher

class NewsCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var newsAuthorLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - Configure
    func configure(with newsModel: NewsModel) {
        let url = URL(string: newsModel.urlToImage ?? "")
        self.newsImageView.kf.setImage(with: url)
        
        self.newsTitleLabel.text = newsModel.title ?? ""
        self.newsAuthorLabel.text = newsModel.author ?? ""
    }
    
}
