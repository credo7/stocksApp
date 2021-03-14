//
//  findStockTableViewCell.swift
//  Stocks3
//
//  Created by Vitya on 13.12.2020.
//

import UIKit

class findStockTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameOfStock: UILabel!
    @IBOutlet weak var priceOfStock: UILabel!
    
    static let identifier = "findStockTableViewCell"
    
    
    static func nib() -> UINib{
        return UINib(nibName: "findStockTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
