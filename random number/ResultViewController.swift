//
//  ResultViewController.swift
//  random number
//
//  Created by 大江祥太郎 on 2019/01/27.
//  Copyright © 2019年 shotaro. All rights reserved.
//

import UIKit
import LTMorphingLabel

class ResultViewController: UIViewController {

    @IBOutlet weak var rankLabel: LTMorphingLabel!
    @IBOutlet weak var lastScore: LTMorphingLabel!
    @IBOutlet weak var highScore: LTMorphingLabel!
    
    var modeSecond = 0.0
    var level:Int = 0
    //正解数
    var correctAnsNum:Int = 0
    
    var rankResult:String!
    var rank:Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rankLabel.morphingEffect = .burn
        lastScore.morphingEffect = .sparkle
        highScore.morphingEffect = .sparkle
        
        lastScore.text = "\(correctAnsNum)問"
        
        rankCheck()
    }
    
    func rankCheck(){
        rank = modeSecond/Double(correctAnsNum)
        
        switch level{
        case 1:
            switch rank {
            case 0..<1.0:
                rankLabel.textColor = UIColor.blue
                rankResult = "SSS"
            case 1.0..<1.5:
                rankLabel.textColor = UIColor.purple
                rankResult = "SS"
            case 1.5..<1.8:
                rankLabel.textColor = UIColor.orange
                rankResult = "S"
            case 1.8..<2.0:
                rankLabel.textColor = UIColor.yellow
                rankResult = "A"
            case 2.0..<2.3:
                rankLabel.textColor = UIColor.yellow
                rankResult = "B"
            case 2.3..<2.5:
                rankLabel.textColor = UIColor.yellow
                rankResult = "C"
            case 2.5..<2.8:
                rankLabel.textColor = UIColor.red
                rankResult = "D"
            case 2.8..<3.0:
                rankLabel.textColor = UIColor.red
                rankResult = "E"
            case 3.0..<3.3:
                rankLabel.textColor = UIColor.red
                rankResult = "F"
            case 3.3..<3.5:
                rankLabel.textColor = UIColor.magenta
                rankResult = "G"
                
            default:
                rankLabel.textColor = UIColor.magenta
                rankResult = "Z"
            }
        case 2:
            switch rank {
            case 0..<1.0:
                rankLabel.textColor = UIColor.blue
                rankLabel.text = "Super"
            case 1.0..<2.0:
                rankLabel.textColor = UIColor.purple
                rankLabel.text = "Greate!"
            case 2.0..<3.0:
                rankLabel.textColor = UIColor.orange
                rankLabel.text = "Good!"
            case 3.0..<4.0:
                rankLabel.textColor = UIColor.yellow
                rankLabel.text = "SS"
            case 4.0..<5.0:
                rankLabel.textColor = UIColor.yellow
                rankLabel.text = "S"
            case 5.0..<5.5:
                rankLabel.textColor = UIColor.yellow
                rankLabel.text = "A"
            case 5.5..<6.0:
                rankLabel.textColor = UIColor.red
                rankLabel.text = "B"
            case 6.0..<6.5:
                rankLabel.textColor = UIColor.red
                rankLabel.text = "C"
            case 6.5..<7.0:
                rankLabel.textColor = UIColor.red
                rankLabel.text = "D"
            case 7.0..<7.5:
                rankLabel.textColor = UIColor.magenta
                rankLabel.text = "E"
                
            default:
                rankLabel.textColor = UIColor.black
                rankLabel.text = "Z"
                
            }
        case 3:
            switch rank {
            case 0..<2.0:
                rankLabel.textColor = UIColor.blue
                rankLabel.text = "SSS"
            case 2.0..<3.0:
                rankLabel.textColor = UIColor.purple
                rankLabel.text = "SS"
            case 3.0..<4.0:
                rankLabel.textColor = UIColor.orange
                rankLabel.text = "S"
            case 4.0..<5.0:
                rankLabel.textColor = UIColor.yellow
                rankLabel.text = "A"
            case 5.0..<6.0:
                rankLabel.textColor = UIColor.yellow
                rankLabel.text = "B"
            case 6.0..<7.0:
                rankLabel.textColor = UIColor.yellow
                rankLabel.text = "C"
            case 7.0..<8.0:
                rankLabel.textColor = UIColor.red
                rankLabel.text = "D"
            case 8.0..<9.0:
                rankLabel.textColor = UIColor.red
                rankLabel.text = "E"
            case 10..<11:
                rankLabel.textColor = UIColor.red
                rankLabel.text = "F"
            case 11..<12:
                rankLabel.textColor = UIColor.magenta
                rankLabel.text = "G"
                
            default:
                rankLabel.textColor = UIColor.black
                rankLabel.text = "Z"
            }
        default:
            break
        }
        
        rankLabel.text = rankResult
    
    }
    

    @IBAction func back(_ sender: Any) {
        self.performSegue(withIdentifier: "toFirst", sender: nil)
    }
    

}
