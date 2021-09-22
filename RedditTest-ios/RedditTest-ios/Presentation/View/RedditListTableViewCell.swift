//
//  RedditListTableViewCell.swift
//  RedditTest-ios
//
//  Created by Stefan V. de Moraes on 20/09/21.
//

import UIKit

class RedditListTableViewCell: UITableViewCell {

    @IBOutlet private(set) weak var thumbnailView: UIImageView?
    
    @IBOutlet private(set) weak var titleLable: UILabel?
    
    @IBOutlet private(set) weak var authorLabel: UILabel?
    
    @IBOutlet private(set) weak var commentsLabel: UILabel?
    
    @IBOutlet private(set) weak var entryDateLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: animated)

        // Configure the view for the selected state
    }
    
}
