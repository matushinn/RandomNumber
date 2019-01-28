//
//  ThirdViewController.swift
//  random number
//
//  Created by 大江祥太郎 on 2019/01/27.
//  Copyright © 2019年 shotaro. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var level = 0
    
    var modeSecond = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func modeButton(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            modeSecond = 30
        case 1:
            modeSecond = 60
        case 2:
            modeSecond = 90
        case 3:
            modeSecond = 120
        default:
            break
        }
        self.performSegue(withIdentifier: "toFourth", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFourth"{
            let questionVC = segue.destination as! ViewController
            //値渡し
            questionVC.level = level
            questionVC.modeSecond = modeSecond
        }
    }

    
}
