//
//  ViewController.swift
//  review
//
//  Created by Kiri on 2015/11/15.
//  Copyright © 2015年 Kiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageMenu : CAPSPageMenu?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "PAGE MENU"
        self.navigationController?.navigationBar.barTintColor = UIColor.blackColor()
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        
        // Do any additional setup after loading the view, typically from a nib.
        
        // Array to keep track of controllers in page menu
        var controllerArray : [UIViewController] = []
        
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
        let controller1 : UIViewController = TableViewController()
        controller1.title = "Rank"
        controllerArray.append(controller1)
        
        let controller2 : UIViewController = CustomViewController2()
        controller2.title = "New"
        controllerArray.append(controller2)
        
        let controller3 : UIViewController = CustomViewController3()
        controller3.title = "さがす"
        controllerArray.append(controller3)
        
        let controller4 : UIViewController =  CustomViewController4()
        controller4.title = "Home"
        controllerArray.append(controller4)
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        let parameters: [CAPSPageMenuOption] = [
            .ScrollMenuBackgroundColor(UIColor.whiteColor()),
            .ViewBackgroundColor(UIColor.lightGrayColor()),
            .SelectionIndicatorColor(UIColor(red: 0.8, green: 0.7, blue: 1.5, alpha: 1.0)),
            .BottomMenuHairlineColor(UIColor.lightGrayColor()),
            .MenuItemFont(UIFont(name: "HelveticaNeue", size: 17.0)!),
            .MenuHeight(45.0),
            .MenuItemWidth(70.0),
            .CenterMenuItems(true)
        ]
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 30, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        
        pageMenu!.didMoveToParentViewController(self)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

