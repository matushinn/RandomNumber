//
//  ViewController.swift
//  random number
//
//  Created by 大江祥太郎 on 2018/11/29.
//  Copyright © 2018年 shotaro. All rights reserved.
//

import UIKit
import LTMorphingLabel

class ViewController: UIViewController {
  
    @IBOutlet weak var leftLabel: LTMorphingLabel!
    @IBOutlet weak var rightLabel: LTMorphingLabel!
    
    @IBOutlet weak var calcLabel: LTMorphingLabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    
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
    
    var calculation:Int = 0
    var index:Int = 0
    
     var calc:[String] = ["+","-","×"]
    
    //timer
    var timer:Timer!
    var count:Double = 0.0
    
    
    //乱数
    func arc4random(lower: UInt32, upper: UInt32) -> UInt32 {
        guard upper >= lower else {
            return 0
        }
        
        return arc4random_uniform(upper - lower) + lower
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //問題表示
        updateLabelQuestion()
        
        rightLabel.morphingEffect = .anvil
        leftLabel.morphingEffect = .anvil
        calcLabel.morphingEffect = .anvil
        
        startTimer()
        
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
    }
    
    //    timer
    @objc func update(){
        count = count + 0.1
        timerLabel.text = String(format: "%.1f", count)
        if count < 0{
            timer.invalidate()
            self.performSegue(withIdentifier: "toResult", sender: nil)
            
            
        }
    }
    
    func randomNum(){
        //1~9までの数字
        leftNumber=Int(arc4random(lower: 0, upper: 9))+1
        rightNumber=Int(arc4random(lower: 0, upper: 9))+1
        
       
        calculation = Int( arc4random_uniform(UInt32(calc.count-1)) )+1
    }
    //問題のアップデート
    func updateLabelQuestion(){
        
        randomNum()
        if calc[calculation] == "+"{
            calcLabel.textColor = UIColor.blue
        }
        if calc[calculation] == "-"{
            calcLabel.textColor = UIColor.green
            if leftNumber < rightNumber{
                randomNum()
            }
        }
        if calc[calculation] == "×"{
            calcLabel.textColor = UIColor.yellow
        }
        
        leftLabel.text = String(leftNumber)
        rightLabel.text = String(rightNumber)
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
    
        button(UIButton())
    }
    func button(_ sender:Any){
        
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
        
        //index番目のタグのボタンを正解にする
        switch index {
        case 0:
            mode0.setTitle(String(result), for: .normal)
        case 1:
            mode1.setTitle(String(result), for: .normal)
        case 2:
            mode2.setTitle(String(result), for: .normal)
        case 3:
            mode3.setTitle(String(result), for: .normal)
            
        case 4:
            mode4.setTitle(String(result), for: .normal)
        case 5:
            mode5.setTitle(String(result), for: .normal)
            
        case 6:
            mode6.setTitle(String(result), for: .normal)
        case 7:
            mode7.setTitle(String(result), for: .normal)
            
        case 8:
            mode8.setTitle(String(result), for: .normal)
        case 9:
            mode9.setTitle(String(result), for: .normal)
            
        case 10:
            mode10.setTitle(String(result), for: .normal)
        case 11:
            mode11.setTitle(String(result), for: .normal)
            
        case 12:
            mode12.setTitle(String(result), for: .normal)
        case 13:
            mode13.setTitle(String(result), for: .normal)
            
        case 14:
            mode14.setTitle(String(result), for: .normal)
        case 15:
            mode15.setTitle(String(result), for: .normal)
            
        case 16:
            mode16.setTitle(String(result), for: .normal)
        case 17:
            mode17.setTitle(String(result), for: .normal)
            
        case 18:
            mode18.setTitle(String(result), for: .normal)
        case 19:
            mode19.setTitle(String(result), for: .normal)
            
        case 20:
            mode20.setTitle(String(result), for: .normal)
        case 21:
            mode21.setTitle(String(result), for: .normal)
            
        case 22:
            mode22.setTitle(String(result), for: .normal)
        case 23:
            mode23.setTitle(String(result), for: .normal)
            
        case 24:
            mode24.setTitle(String(result), for: .normal)
        
        default:
            break
        }
        print(index)
    }
    
    
    @IBAction func tappedModeButton(_ sender: UIButton) {
        print(index)
        //正解ボタンを押した時
        if sender.currentTitle == String(result){
            updateLabelQuestion()
            print("success")
        }
        
    }
    

    
}


