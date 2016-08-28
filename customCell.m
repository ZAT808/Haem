//
//  customCell.m
//  HaematologyApp
//
//  Created by Peter Gough on 25/08/2016.
//  Copyright © 2016 Peter Gough. All rights reserved.
//

#import "customCell.h"

@implementation customCell

@synthesize nameLabel = _nameLabel;
@synthesize thumbnailImageView = _thumbnailImageView;
@synthesize descript = _descript;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
//========== how to draw a coloured rectangle in a specific location ==========
//- (void) drawRect:(CGRect)rect {
//    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    UIColor * redColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
//    UIColor * blueColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
//
//    //Fill
//    
//    //CGContextSetFillColorWithColor(context, redColor.CGColor);
//    //CGContextFillRect(context, CGRectMake(10, 10, self.frame.size.width - 20, self.frame.size.height - 20));
//    
//    //Stroke color
//    
//    CGRect imageRect = CGRectMake(7.0, 8.0, 62.0, 62.0);
//    CGContextSetStrokeColorWithColor(context, blueColor.CGColor);
//    CGContextSetLineWidth(context, 2.0);
//    CGContextStrokeRect(context, imageRect);
//
//
//}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
