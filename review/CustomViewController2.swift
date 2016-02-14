//
//  TableViewController4.swift
//  PageSlideApplication
//
//  Created by 橋詰明宗 on 2015/11/19.
//  Copyright © 2015年 橋詰明宗. All rights reserved.
//

import UIKit

class CustomViewController2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        
        
        let nipName=UINib(nibName: "CustomCollectionCell", bundle:nil)
        
        myCollectionView.registerNib(nipName, forCellWithReuseIdentifier: "Cell")
    
       
        
    }
    
    
    /*
    Cellの総数を返す
    */
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 80
    }
    
    /*
    Cellに値を設定する
    */
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        
        
        let  cell = myCollectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CustomCollectionCell
        
        
        
        return cell
    }
    
    /*
    Cellのサイズを返す
    */
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(self.view.frame.size.width/2-12, 180)
    }
    
    
    
}