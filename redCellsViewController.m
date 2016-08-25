//
//  redCellsViewController.m
//  HaematologyApp
//
//  Created by Peter Gough on 20/08/2016.
//  Copyright © 2016 Peter Gough. All rights reserved.
//

#import "redCellsViewController.h"

@interface redCellsViewController ()

@end

@implementation redCellsViewController
{
    NSArray *tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.498 green:0.0 blue:0.0 alpha:1.0]];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSFontAttributeName: [UIFont fontWithName:@"Exo2-ExtraBold" size:18.0f],
                                                           NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:0.498 green:0.0 blue:0.0 alpha:1.0
                                            ]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Exo2-ExtraBold" size:12.0f]} forState:UIControlStateNormal];
        // Do any additional setup after loading the view.
    
    tableData = [NSArray arrayWithObjects:@"Acanthocyte", @"Anisocytosis", @"Basophilic stippling", @"Echinocytes", @"Elliptocytes", @"Hemi-ghost cells", @"Howell-Jolly bodies", @"Hypochromasia", @"Keratocytes", @"Macrocytes", @"Microcytes", nil];
    
   
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor colorWithRed:0.498 green:0.0 blue:0.0 alpha:1.0];
    [cell setSelectedBackgroundView:bgColorView];
    
    cell.textLabel.highlightedTextColor = [UIColor whiteColor];
    cell.separatorInset = UIEdgeInsetsZero;
    cell.preservesSuperviewLayoutMargins = false;
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:@"Exo2-Regular" size:14.0f];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
