//
//  AfterCellViewController.swift
//  Stocks3
//
//  Created by Vitya on 16.12.2020.
//

import UIKit

class AfterCellViewController: UIViewController {
    
    var stockAfterCell: stocksHere!
    
    var abc = ""
    

    
    @IBOutlet weak var stockNameLabel: UILabel!
    @IBOutlet weak var stockPriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stockPriceLabel.text = "250"
        stockNameLabel.text = abc
        
        

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
