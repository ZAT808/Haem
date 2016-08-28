//
//  redCellsViewController.m
//  HaematologyApp
//
//  Created by Peter Gough on 20/08/2016.
//  Copyright © 2016 Peter Gough. All rights reserved.
//

#import "redCellsViewController.h"
#import "customCell.h"

@interface redCellsViewController ()

@end

@implementation redCellsViewController
{
    NSArray *tableData;
    NSArray *shortDesc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.498 green:0.0 blue:0.0 alpha:1.0]];
    [[UINavigationBar appearance] setTranslucent:NO];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSFontAttributeName: [UIFont fontWithName:@"Exo2-ExtraBold" size:18.0f],
                                                           NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    [[UITabBar appearance] setTranslucent:NO];
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:0.498 green:0.0 blue:0.0 alpha:1.0
                                            ]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Exo2-ExtraBold" size:12.0f]} forState:UIControlStateNormal];
        // Do any additional setup after loading the view.
    
    tableData = [NSArray arrayWithObjects:@"Acanthocyte", @"Anisocytosis", @"Basophilic stippling", @"Echinocytes", @"Elliptocytes", @"Hemi-ghost cells", @"Howell-Jolly bodies", @"Hypochromasia", @"Keratocytes", @"Macrocytes", @"Microcytes", nil];
    
    shortDesc = [NSArray arrayWithObjects:@"Spiked membrane", @"Unequal size", @"Dots at the periphery", @"Evenly spaced thorny projections", @"Oval or elongated", @"Irregularly contracted cells", @"A purple spot on an erythrocyte", @"Increase in central pallor", @"Irregular shape due to passage through damaged blood vessels", @"Larger then normal", @"Smaller than normal", nil];
    
   
}
//========== TELL TABLE VIEW HOW MANY ROWS TO MAKE =====================================================
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}
//========== CREATE EACH ROW IN THE TABLE USING THE CUSTOM CELL ========================================
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"customCell";
    
    customCell *cell = (customCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"customCell" owner:self options:nil];
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        cell = [nib objectAtIndex:0];
        
        CALayer *cellImageLayer = cell.thumbnailImageView.layer;
        [cellImageLayer setCornerRadius:9.0f];
        [cellImageLayer setMasksToBounds:YES];
        [cellImageLayer setBorderWidth:2.0f];
        [cellImageLayer setBorderColor:[[UIColor whiteColor] CGColor]];
        
    }

    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor colorWithRed:0.498 green:0.0 blue:0.0 alpha:1.0];
    [cell setSelectedBackgroundView:bgColorView];
    cell.textLabel.highlightedTextColor = [UIColor whiteColor];
    
    cell.separatorInset = UIEdgeInsetsZero;
    cell.preservesSuperviewLayoutMargins = false;
    cell.backgroundColor = [UIColor clearColor];
    
    cell.thumbnailImageView.image = [UIImage imageNamed:@"cellTest.png"];
    
    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    
    cell.descript.text = [shortDesc objectAtIndex:indexPath.row];
    cell.descript.numberOfLines = 0;
    cell.descript.lineBreakMode = NSLineBreakByWordWrapping;

    return cell;
}
//=====================================================================================================
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 78;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
