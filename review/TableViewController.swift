//
//  TableViewController.swift
//  pageMenuApp
//
//  Created by 橋詰明宗 on 2015/11/15.
//  Copyright © 2015年 橋詰明宗. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        let nib:UINib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        
        self.tableView.registerNib(nib, forCellReuseIdentifier: "Cell")
    }
    
    
    func  numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5;
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 75
    
    }
    
    func  tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell:CustomTableViewCell = (tableView.dequeueReusableCellWithIdentifier("Cell") as? CustomTableViewCell
            )!
    
        
        if indexPath.section == 0{
            cell.namae.text = "リュック"
            cell.gazou.image = UIImage(named: "ryukku.jpg")
            
        }else if indexPath.section == 1{
            cell.namae.text = "マフラー"
            cell.gazou.image = UIImage(named: "mahura.jpg")
            
        }else if indexPath.section == 2{
            cell.namae.text = "ニット"
            cell.gazou.image = UIImage(named: "nitto.jpg")
            
        }else if indexPath.section == 3{
            cell.namae.text = "バッグ"
            cell.gazou.image = UIImage(named: "bag.jpg")
            
        }else if indexPath.section == 4{
            cell.namae.text = "ネックレス"
            cell.gazou.image = UIImage(named: "nekuresu.jpg")
        }
            
        
        
        return cell
    
        
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}