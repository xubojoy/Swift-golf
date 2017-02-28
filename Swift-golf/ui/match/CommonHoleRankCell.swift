//
//  CommonHoleRankCell.swift
//  Swift-golf
//
//  Created by xubojoy on 2017/2/27.
//  Copyright © 2017年 xubojoy. All rights reserved.
//

import UIKit
import DynamicColor
import SDWebImage
class CommonHoleRankCell: UITableViewCell {

    
    
    @IBOutlet weak var rankNumLabel: UILabel!
    
    @IBOutlet weak var userAvatarIMageView: UIImageView!
    
    @IBOutlet weak var userPhoneLabel: UILabel!
    
    
    @IBOutlet weak var pointLabel: UILabel!
    
    
    
    @IBOutlet weak var dowmLine: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.dowmLine.backgroundColor = DynamicColor(hexString: splite_line_color)
        self.pointLabel.textColor = DynamicColor(hexString: orange_order_status_backgroud_color)
        self.rankNumLabel.textColor = DynamicColor(hexString: gray_text_color)
        self.userAvatarIMageView.layer.cornerRadius = self.userAvatarIMageView.frame.size.width/2
        self.userAvatarIMageView.layer.masksToBounds = true
    }
    
    func renderCommonHoleRankCell(holeInOneUserPoint: HoleInOneUserPoint,row:NSInteger) {
        
        self.rankNumLabel.text = String.init(format: "%d", holeInOneUserPoint.orderInx)
        let userImgUrl = NSURL.fileURL(withPath: (holeInOneUserPoint.user?.avatarUrl)!)
        self.userAvatarIMageView.sd_setImage(with: userImgUrl, placeholderImage: #imageLiteral(resourceName: "user_icon"))
        
//        .replacingCharacters(in: rangeStr, with: "****").replacingCharacters(in: rangeStr, with: "****")
        let telNo = holeInOneUserPoint.user?.loginMobileNo
        self.userPhoneLabel.text = telNo
        self.pointLabel.text = String.init(format: "%d 分", holeInOneUserPoint.pointCount)

//        NSLog(@">>>>>>>>>>>>>%@",holeInOneUserPoint.user.loginMobileNo);
//        NSString *telNo = [holeInOneUserPoint.user.loginMobileNo stringByReplacingCharactersInRange:NSMakeRange(3, 4) withString:@"****"];
//        self.userNameLabel.text = telNo;
//        
//        NSString *pointStr = [NSString stringWithFormat:@"%d 分",holeInOneUserPoint.pointCount];
//        int start = (int)[pointStr rangeOfString:[NSString stringWithFormat:@"%d",holeInOneUserPoint.pointCount]].location;
//        int length = (int)[pointStr rangeOfString:[NSString stringWithFormat:@"%d",holeInOneUserPoint.pointCount]].length;
//        NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:pointStr];
//        [attributedText addAttribute:NSForegroundColorAttributeName value:[ColorUtils colorWithHexString:orange_common_color] range:NSMakeRange(start,length)];
//        
//        self.pointLabel.attributedText = attributedText;

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
