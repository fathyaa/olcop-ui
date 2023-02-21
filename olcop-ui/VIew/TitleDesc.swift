//
//  TitleDesc.swift
//  olcop-ui
//
//  Created by Phincon on 21/02/23.
//

import UIKit

class TitleDesc: UITableViewCell {
    
    static let identifier = "TitleDesc"
    @IBOutlet weak var titleLabel : UILabel!{
        didSet{
            titleLabel.text = "Guceh"
        }
    }
    @IBOutlet weak var priceLabel : UILabel!{
        didSet{
            priceLabel.text = "Rp50.000"
        }
    }
    @IBOutlet weak var likeButton : UIImageView!{
        didSet{
            self.likeButton.image = UIImage(named: "like-button")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
