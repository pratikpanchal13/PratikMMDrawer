//
//  ViewController.swift
//  PatrickSideMenu
//
//  Created by indianic on 21/03/17.
//  Copyright © 2017 pratik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var appDelegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnLeftSideTapped(_ sender: Any) {
        appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
    }
    
    @IBAction func btnRightideTapped(_ sender: Any) {
        appDelegate.centerContainer!.toggle(MMDrawerSide.right, animated: true, completion: nil)
    }
}

