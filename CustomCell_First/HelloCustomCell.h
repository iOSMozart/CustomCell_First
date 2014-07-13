//
//  HelloCustomCell.h
//  CustomCell_First
//
//  Created by 傅小柳 on 2014/7/13.
//  Copyright (c) 2014年 Harris. All rights reserved.
//

#import <UIKit/UIKit.h>

#define HELLO_CUSTOM_CELL_IDENTIFIER   (@"HelloCustomCell")
#define HELLO_CELL_HEIGHT         (162)

@interface HelloCustomCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *companyImageView;
@property (strong, nonatomic) IBOutlet UILabel *companyNameLabel;

@end
