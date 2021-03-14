//
//  alertView.swift
//  Stocks3
//
//  Created by Vitya on 18.12.2020.
//

import Foundation
import UIKit

class alertView: UIView {
    
//    static let instance = alertView()
    static let instance = alertView()
    
    @IBOutlet weak var whiteAlertView: UIView!
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var StockNameAlert: UILabel!
    
    struct Constants {
        static let backgroundAlphaTo: CGFloat = 1
    }
    
    let backgroundView: UIView = {
        let backgroundView = UIView()
        backgroundView.backgroundColor = .white
        backgroundView.alpha = 0
        return backgroundView
    }()
    
    private let customAlertView: UIView = {
        let alert = UIView()
        alert.backgroundColor = .link
        alert.layer.masksToBounds = true
        alert.layer.cornerRadius = 12
        return alert
    }()
    
    func showAlert(with title: String, onViewController: UIViewController) {
        guard let targerVIew = onViewController.view else { return }
        backgroundView.frame = targerVIew.bounds
        targerVIew.addSubview(backgroundView)
//        targerVIew.addSubview(whiteAlertView)
        customAlertView.frame = CGRect(x: 40, y: -300, width: targerVIew.frame.size.width - 80, height: 300)
        UIView.animate(withDuration: 0.25, animations: {
            self.backgroundView.alpha = Constants.backgroundAlphaTo
        }, completion: { done in
            if done {
                UIView.animate(withDuration: 0.25, animations: {
                self.whiteAlertView.center = targerVIew.center
                })
            }
        })
    }
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        Bundle.main.loadNibNamed("UIAlert", owner: self, options: nil)
//        commonInit()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//
//    private func commonInit() {
//        whiteAlertView.layer.cornerRadius = 30
//        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//        parentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
//    }
//
//    func showAlert(name: String, on viewController: UIViewController) {
//        self.StockNameAlert?.text = name
//        UIApplication.shared.keyWindow?.addSubview(whiteAlertView)
//        let targetView = viewController.view
//        UIView.animate(withDuration: 1, animations: { self.whiteAlertView.center = targetView!.center })
//    }
    
    
}
