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
        let snack_food_while_x1 = Int(x) - food1_x
        let snack_food_while_y1 = Int(y) - food1_y
        let snack_food_while_x2 = Int(x) - food2_x
        let snack_food_while_y2 = Int(y) - food2_y
        let snack_food_while_x3 = Int(x) - food3_x
        let snack_food_while_y3 = Int(y) - food3_y
        let snack_food_while_x4 = Int(x) - food4_x
        let snack_food_while_y4 = Int(y) - food4_y
        let snack_food_while_x5 = Int(x) - food5_x
        let snack_food_while_y5 = Int(y) - food5_y
        let snack_food_while_x6 = Int(x) - food6_x
        let snack_food_while_y6 = Int(y) - food6_y
        let snack_food_while_x7 = Int(x) - food7_x
        let snack_food_while_y7 = Int(y) - food7_y
        let snack_food_while_x8 = Int(x) - food8_x
        let snack_food_while_y8 = Int(y) - food8_y
        
        print(snack_food_while_x2)
        print(snack_food_while_y2)
        
        //餌を食べる条件
        if (snack_food_while_x1 < 10) && (snack_food_while_y1 <= 20){
            snack_food1.image = nil
        }
        if (snack_food_while_x2 < 30) && (snack_food_while_y2 <= 20){
            snack_food2.image = nil
        }
        if (snack_food_while_x3 < 50) && (snack_food_while_y3 <= 20){
            snack_food3.image = nil
        }
        if (snack_food_while_x4 < 70) && (snack_food_while_y4 <= 20){
            snack_food4.image = nil
        }
        if (snack_food_while_x5 < 90) && (snack_food_while_y5 <= 20){
            snack_food5.image = nil
        }
        if (snack_food_while_x6 < 110) && (snack_food_while_y6 <= 20){
            snack_food6.image = nil
        }
        if (snack_food_while_x7 < 130) && (snack_food_while_y7 <= 20){
            snack_food7.image = nil
        }
        if (snack_food_while_x8 < 150) && (snack_food_while_y8 <= 20){
            snack_food8.image = nil
        }
        else {
        }
            
    }
    
    //メニュー
    @IBAction func menu(_ sender: Any) {
        performSegue(withIdentifier: "ModalSegue", sender: nil)
    }
    
    }
