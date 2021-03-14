//
//  SecondTableViewCell.swift
//  Stocks3
//
//  Created by Vitya on 08.12.2020.
//

import UIKit
import Foundation

class SecondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var plusButton: UIButton!
    
    
    static let identifier = "SecondTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "SecondTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
