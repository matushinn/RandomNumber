//
//  SecondViewController.swift
//  random number
//
//  Created by 大江祥太郎 on 2019/01/27.
//  Copyright © 2019年 shotaro. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var level:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedLevelButton(_ sender: UIButton) {
        switch sender.tag {
        case 1 :
            level = 1
            print("初級")
            self.performSegue(withIdentifier: "toThird", sender: self)
        case 2 :
            level = 2
            print("中級")
            self.performSegue(withIdentifier: "toThird", sender: self)
        case 3 :
            level = 3
            print("上級")
            self.performSegue(withIdentifier: "toThird", sender: self)
        default:
            break
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThird"{
            //画面取り出す
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.level = level
        }
    }
    

   
}
