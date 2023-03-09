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
        
        food_x_y()
    }
    
    //item
    @IBOutlet weak var snack: UIImageView!
    @IBOutlet weak var lstick: UIImageView!
    //snack餌
    @IBOutlet weak var snack_food1: UIImageView!
    @IBOutlet weak var snack_food2: UIImageView!
    @IBOutlet weak var snack_food3: UIImageView!
    @IBOutlet weak var snack_food4: UIImageView!
    @IBOutlet weak var snack_food5: UIImageView!
    @IBOutlet weak var snack_food6: UIImageView!
    @IBOutlet weak var snack_food7: UIImageView!
    @IBOutlet weak var snack_food8: UIImageView!
    
    var food1_x = 0
    var food1_y = 0
    var food2_x = 0
    var food2_y = 0
    var food3_x = 0
    var food3_y = 0
    var food4_x = 0
    var food4_y = 0
    var food5_x = 0
    var food5_y = 0
    var food6_x = 0
    var food6_y = 0
    var food7_x = 0
    var food7_y = 0
    var food8_x = 0
    var food8_y = 0
    
    //operation_item
    @IBAction func up_button(_ sender: Any) {
        for _ in 0..<5{
            self.snack.center.y -= 10
            //端に着いているか確認
            end()
            food_eat()
            
            sleep(UInt32(0.1))
            //lstick.image = UIImage(named: "l.joystick.tilt.up.fill")
        }
        //lstick.image = UIImage(named: "l.joystick.fill")
    }
    @IBAction func down_button(_ sender: Any) {
        for _ in 0..<5{
            self.snack.center.y += 10
            //端に着いているか確認
            end()
            food_eat()
            
            sleep(UInt32(0.1))
            viewDidLoad()
            self.viewDidLoad()
            //lstick.image = UIImage(named: "l.joystick.tilt.down.fill")
        }
        //lstick.image = UIImage(named: "l.joystick.fill")
    }
    @IBAction func left_button(_ sender: Any) {
        for _ in 0..<5{
            self.snack.center.x -= 10
            //端に着いているか確認
            end()
            food_eat()
            
            //lstick.image = UIImage(named: "l.joystick.tilt.left.fill")
        }
        //lstick.image = UIImage(named: "l.joystick.fill")
    }
    @IBAction func right_button(_ sender: Any) {
        for _ in 0..<5{
            self.snack.center.x += 10
            //端に着いているか確認
            end()
            food_eat()
            
            //lstick.image = UIImage(named: "l.joystick.tilt.right.fill")
        }
        //lstick.image = UIImage(named: "l.joystick.fill")
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
    
    //餌の座標を取得
    func food_x_y(){
        food1_x = Int(snack_food1.frame.origin.x)
        food1_y = Int(snack_food1.frame.origin.y)
        food2_x = Int(snack_food2.frame.origin.x)
        food2_y = Int(snack_food2.frame.origin.y)
        food3_x = Int(snack_food3.frame.origin.x)
        food3_y = Int(snack_food3.frame.origin.y)
        food4_x = Int(snack_food4.frame.origin.x)
        food4_y = Int(snack_food4.frame.origin.y)
        food5_x = Int(snack_food5.frame.origin.x)
        food5_y = Int(snack_food5.frame.origin.y)
        food6_x = Int(snack_food6.frame.origin.x)
        food6_y = Int(snack_food6.frame.origin.y)
        food7_x = Int(snack_food7.frame.origin.x)
        food7_y = Int(snack_food7.frame.origin.y)
        food8_x = Int(snack_food8.frame.origin.x)
        food8_y = Int(snack_food8.frame.origin.y)
    }
    
    //餌を食べる
    func food_eat(){
        let x = snack.frame.origin.x
        let y = snack.frame.origin.y
        let snack_food_while_x = Int(x) - food1_x
        let snack_food_while_y = Int(y) - food1_y
        
        print(snack_food_while_x)
        print(snack_food_while_y)
        
        //餌を食べる条件
        if (snack_food_while_x < 10) && (snack_food_while_y <= 10){
            snack_food1.image = nil
        }
        else {
        }
            
    }
    }
