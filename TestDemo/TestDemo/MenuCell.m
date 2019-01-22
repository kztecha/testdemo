//
//  MenuCell.m
//  TestDemo
//
//  Created by zhangshupeng on 2019/1/13.
//  Copyright © 2019年 KZ. All rights reserved.
//

#import "MenuCell.h"

@implementation MenuCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)configData:(id)data {
    [super configData:data];
    self.textLabel.text = data;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
