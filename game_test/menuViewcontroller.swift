//
//  menuViewcontroller.swift
//  game_test
//
//  Created by kaito on 2023/03/10.
//

import UIKit

class menuViewcontroller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 2, blue: 0, alpha: 0.7)
        
        level_label.text = String(level)
        diamond_quantity_label.text = String(diamond)
    }
    
    //item
    @IBOutlet weak var level_label: UILabel!
    @IBOutlet weak var level_progress: UIProgressView!
    @IBOutlet weak var diamond_quantity_label: UILabel!
    
    @IBAction func `continue`(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
