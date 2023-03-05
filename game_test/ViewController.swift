//
//  ViewController.swift
//  game_test
//
//  Created by kaito on 2023/03/05.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //item
    @IBOutlet weak var snack: UIImageView!
    @IBOutlet weak var lstick: UIImageView!
    //snack餌
    
    
    //operation_item
    @IBAction func up_button(_ sender: Any) {
        for _ in 0..<10{
            self.snack.center.y -= 10
            //端に着いているか確認
            end()
            
            sleep(UInt32(0.1))
            lstick.image = UIImage(named: "l.joystick.tilt.up.fill")
        }
        lstick.image = UIImage(named: "l.joystick.fill")
    }
    @IBAction func down_button(_ sender: Any) {
        for _ in 0..<10{
            self.snack.center.y += 10
            //端に着いているか確認
            end()
            
            sleep(UInt32(0.1))
            viewDidLoad()
            self.viewDidLoad()
            lstick.image = UIImage(named: "l.joystick.tilt.down.fill")
        }
        lstick.image = UIImage(named: "l.joystick.fill")
    }
    @IBAction func left_button(_ sender: Any) {
        for _ in 0..<10{
            self.snack.center.x -= 10
            //端に着いているか確認
            end()
            
            lstick.image = UIImage(named: "l.joystick.tilt.left.fill")
        }
        lstick.image = UIImage(named: "l.joystick.fill")
    }
    @IBAction func right_button(_ sender: Any) {
        for _ in 0..<10{
            self.snack.center.x += 10
            //端に着いているか確認
            end()
            
            lstick.image = UIImage(named: "l.joystick.tilt.right.fill")
        }
        lstick.image = UIImage(named: "l.joystick.fill")
    }
    
    //端に着いたらそれ以上に行かないようにする関数
    func end(){
        let x = snack.frame.origin.x
        let y = snack.frame.origin.y

        print("x座標：",x)
        print("y座標：",y)
        
        //右左
        if x < -14{
            self.snack.center.x += 20
        }
        if x > 326{
            self.snack.center.x -= 20
        }
        //上下
        if y < 30{
            self.snack.center.y += 20
        }
        if y > 800{
            self.snack.center.y -= 20
        }
    }
}
