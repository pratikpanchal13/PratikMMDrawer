//
//  LeftSideViewController.swift
//  PatrickSideMenu
//
//  Created by indianic on 21/03/17.
//  Copyright © 2017 pratik. All rights reserved.
//

import UIKit

//class LeftSideViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
class LeftSideViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var menuItems:[String] = ["Main","About"];
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.view.layoutSubviews()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return menuItems.count;
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let mycell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyCustomTableViewCell
        mycell.lblName.text = menuItems[indexPath.row]
        return mycell;
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        switch(indexPath.row)
        {
        case 0:
            var centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            var centerNavController = UINavigationController(rootViewController: centerViewController)
            var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.centerContainer!.centerViewController = centerNavController
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            break;
        case 1:
            var aboutViewController = self.storyboard?.instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
            var aboutNavController = UINavigationController(rootViewController: aboutViewController)
            var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.centerContainer!.centerViewController = aboutNavController
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            break;
        default:
            print("\(menuItems[indexPath.row]) is selected");
        }
    }
}
