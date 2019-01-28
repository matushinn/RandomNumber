//
//  FirstViewController.swift
//  random number
//
//  Created by 大江祥太郎 on 2019/01/27.
//  Copyright © 2019年 shotaro. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toSecond", sender: nil)
    }
    
   

}
