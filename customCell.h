//
//  customCell.h
//  HaematologyApp
//
//  Created by Peter Gough on 25/08/2016.
//  Copyright © 2016 Peter Gough. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *descript;
@property (nonatomic, strong) IBOutlet UIImageView *thumbnailImageView;

@end
