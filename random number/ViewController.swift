//
//  ViewController.swift
//  random number
//
//  Created by 大江祥太郎 on 2018/11/29.
//  Copyright © 2018年 shotaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var calcLabel: UILabel!
    
    @IBOutlet weak var mode0: UIButton!
    @IBOutlet weak var mode1: UIButton!
    @IBOutlet weak var mode2: UIButton!
    
    @IBOutlet weak var mode3: UIButton!
    
    @IBOutlet weak var mode4: UIButton!
    @IBOutlet weak var mode5: UIButton!
    @IBOutlet weak var mode6: UIButton!
    @IBOutlet weak var mode7: UIButton!
    @IBOutlet weak var mode8: UIButton!
    @IBOutlet weak var mode9: UIButton!
    @IBOutlet weak var mode10: UIButton!
    @IBOutlet weak var mode11: UIButton!
    @IBOutlet weak var mode12: UIButton!
    @IBOutlet weak var mode13: UIButton!
    @IBOutlet weak var mode14: UIButton!
    @IBOutlet weak var mode15: UIButton!
    @IBOutlet weak var mode16: UIButton!
    @IBOutlet weak var mode17: UIButton!
    @IBOutlet weak var mode18: UIButton!
    @IBOutlet weak var mode19: UIButton!
    @IBOutlet weak var mode20: UIButton!
    @IBOutlet weak var mode21: UIButton!
    @IBOutlet weak var mode22: UIButton!
    @IBOutlet weak var mode23: UIButton!
    @IBOutlet weak var mode24: UIButton!
    
    
    var leftNumber :Int=0
    var rightNumber :Int=0
    var result:Int = 0
    
    var index:Int = 0
    
     var calc:[String] = ["+","-","×"]
    
    //乱数
    func arc4random(lower: UInt32, upper: UInt32) -> UInt32 {
        guard upper >= lower else {
            return 0
        }
        
        return arc4random_uniform(upper - lower) + lower
    }
    //問題のアップデート
    func updateLabelQuestion(){
        //1~9までの数字
        leftNumber=Int(arc4random(lower: 1, upper: 10))
        rightNumber=Int(arc4random(lower: 1, upper: 10))
        
        leftLabel.text = String(leftNumber)
        rightLabel.text = String(rightNumber)
        
        let calculation = Int( arc4random_uniform(UInt32(calc.count)) )
        if calc[calculation] == "+"{
            calcLabel.textColor = UIColor.blue
        }
        if calc[calculation] == "-"{
            calcLabel.textColor = UIColor.green
        }
        if calc[calculation] == "×"{
            calcLabel.textColor = UIColor.yellow
        }
        
        calcLabel.text = calc[calculation]
        
        if calcLabel.text == "+"{
            result = leftNumber + rightNumber
        }
        if calcLabel.text == "-"{
            result = leftNumber - rightNumber
        }
        if calcLabel.text == "×"{
            result = leftNumber * rightNumber
        }
        //答えを表示するボタンのタグをランダムで設定
        index = Int(arc4random(lower: 0, upper: 24))
        
        button()
    }
    func button(){
        mode0.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode1.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode2.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode3.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode4.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode5.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode6.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode7.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        
        mode8.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode9.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode10.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode11.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        
        mode12.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode13.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode14.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode15.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode16.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode17.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode18.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode19.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode20.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode21.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode22.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode23.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        mode24.setTitle( String(arc4random(lower: 0, upper: 100)), for: .normal)
        
        
        
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //問題表示
        updateLabelQuestion()
        
    }
    
    
    
    @IBAction func tappedModeButton(_ sender: Any) {
        
        
        
    }
    

    
}


