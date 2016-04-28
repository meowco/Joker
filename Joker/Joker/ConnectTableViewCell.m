//
//  ConnectTableViewCell.m
//  Joker
//
//  Created by 猫儿出墙 on 16/4/27.
//  Copyright © 2016年 猫儿出墙. All rights reserved.
//

#import "ConnectTableViewCell.h"

@implementation ConnectTableViewCell {
    UIImageView *_user;
    UILabel *_name;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
//    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
//        _user = [[UIImageView alloc] init];
//        
//    }
//}

@end
