//
//  CustomCollectionCell.swift
//  PageSlideApplication
//
//  Created by 橋詰明宗 on 2015/11/27.
//  Copyright © 2015年 橋詰明宗. All rights reserved.
//

import UIKit

class CustomCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var syasin: UIImageView!
       
    @IBOutlet weak var bangou: UILabel!
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
    }
}




