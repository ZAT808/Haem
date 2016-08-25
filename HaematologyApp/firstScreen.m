//
//  firstScreen.m
//  HaematologyApp
//
//  Created by Peter Gough on 25/08/2016.
//  Copyright © 2016 Peter Gough. All rights reserved.
//

#import "firstScreen.h"

@interface firstScreen ()

@end

@implementation firstScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"Exo2-ExtraBold" size:18.0f], NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    welcomeText.font = [UIFont fontWithName:@"Exo2-Regular" size:14.0f];


    // Do any additional setup after loading the view.
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
