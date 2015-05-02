//
//  CustomTableViewCell.h
//  Lesson4.1
//
//  Created by T on 15.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *label_ProductName;

@property (strong, nonatomic) IBOutlet UILabel *label_ProductSub;

@property (strong, nonatomic) IBOutlet UIImageView *imageView_ProductImage;




@end
