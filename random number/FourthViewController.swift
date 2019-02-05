//
//  FourthViewController.swift
//  random number
//
//  Created by 大江祥太郎 on 2019/01/28.
//  Copyright © 2019年 shotaro. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
   
    
    
    //ゲーム形式区分け
    var gameFormat:Int = 0
    var level = 0
    
    var modeSecond = 0.0
    var modeQuestionsNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func modeButton(_ sender: UIButton) {
        //ボタンを回転
        let rotationAnimation = CABasicAnimation(keyPath:"transform.rotation.z")
        rotationAnimation.toValue = CGFloat(Double.pi / 180) * 180
        rotationAnimation.duration = 0.3
        rotationAnimation.repeatCount = 1
        sender.layer.add(rotationAnimation, forKey: "rotationAnimation")
        
        //gameformatの区別
        if gameFormat == 1{
            switch sender.tag {
            case 0:
                modeSecond = 30
            case 1:
                modeSecond = 60
            case 2:
                modeSecond = 90
            case 3:
                modeSecond = 120
            case 4:
                modeSecond = 150
            case 5:
                modeSecond = 180
            default:
                break
            }
        }else{
            //制限問題の場合
            switch sender.tag {
            case 0:
                modeQuestionsNum = 10
            case 1:
                modeQuestionsNum = 20
            case 2:
                modeQuestionsNum = 30
            case 3:
                modeQuestionsNum = 50
            case 4:
                modeQuestionsNum = 75
            case 5:
                modeQuestionsNum = 100
                
            default:
                break
            }
            
        }
        self.performSegue(withIdentifier: "toFourth", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFourth"{
            let questionVC = segue.destination as! ViewController
            //値渡し
            questionVC.level = level
            questionVC.modeSecond = modeSecond
            questionVC.gameFormat = gameFormat
            questionVC.modeQuestionsNum = modeQuestionsNum
        }
    }

}
