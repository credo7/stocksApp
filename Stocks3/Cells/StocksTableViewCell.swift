//
//  StocksTableViewCell.swift
//  Stocks3
//
//  Created by Vitya on 08.12.2020.
//

import UIKit



class StocksTableViewCell: UITableViewCell {
    @IBOutlet weak var stockImage: UIImageView!
    @IBOutlet weak var stockName: UILabel!
    @IBOutlet weak var stockHowMany: UILabel!
    @IBOutlet weak var stockPrice: UILabel!
    @IBOutlet weak var stockAllMoney: UILabel!
    @IBOutlet weak var stockPlusMinus: UILabel!
    
    static let identifier = "StocksTableViewCell"
    
    
    static func nib() -> UINib{
        return UINib(nibName: "StocksTableViewCell", bundle: nil)
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        stockImage.image = UIImage(named: "AppleLogo")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
