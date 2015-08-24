//
//  UserViewController.swift
//  tips
//
//  Created by Andy (Liang) Dong on 8/23/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    @IBOutlet weak var defaultTipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var defaults = NSUserDefaults.standardUserDefaults()
        var index = defaults.integerForKey("default_tip_index")
        defaultTipControl.selectedSegmentIndex = index
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func onEditingChanging(sender: AnyObject) {
        var index = defaultTipControl.selectedSegmentIndex
        
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(index, forKey: "default_tip_index")
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
