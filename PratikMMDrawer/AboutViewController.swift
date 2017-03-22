//
//  AboutViewController.swift
//  PratikMMDrawer
//
//  Created by indianic on 21/03/17.
//  Copyright © 2017 pratik. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    var appDelegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnLeftSideMenuClicked(_ sender: Any) {
        
        appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
