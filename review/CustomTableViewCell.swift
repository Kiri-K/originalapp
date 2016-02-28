//
//  CustomTableViewCell.swift
//  PageSlideApplication
//
//  Created by 橋詰明宗 on 2015/11/27.
//  Copyright © 2015年 橋詰明宗. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
   
    @IBOutlet var gazou :UIImageView!
  
    @IBOutlet var namae: UILabel!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // UILabelとかを追加
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
   
}