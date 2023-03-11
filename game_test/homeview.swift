//
//  homeview.swift
//  game_test
//
//  Created by kaito on 2023/03/10.
//

import UIKit

class homeview: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        level_label.text = String(level)
        diamond_quantity_label.text = String(diamond)
        shop_gift_label.text = "SHOP"
    }

    //item
    @IBOutlet weak var level_label: UILabel!
    @IBOutlet weak var level_progress: UIProgressView!
    @IBOutlet weak var diamond_quantity_label: UILabel!
    
    //shop_gift_view
    @IBOutlet weak var shop_gift_view: UIView!
    @IBOutlet weak var shop_gift_label: UILabel!
    @IBAction func GIFT_button(_ sender: UIButton) {
        shop_gift_label.text = "GIFT"
        sender.tintColor = UIColor.systemRed
    }
    @IBAction func SHOP_button(_ sender: UIButton) {
        shop_gift_label.text = "SHOP"
        sender.tintColor = UIColor.systemRed
    }
    
}
