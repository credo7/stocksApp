//
//  TableViewCell.swift
//  Stocks3
//
//  Created by Vitya on 06.12.2020.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var changeLabel: UILabel!
    
    static let identifier = "TableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
