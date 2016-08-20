//
//  newsViewController.m
//  HaematologyApp
//
//  Created by Peter Gough on 20/08/2016.
//  Copyright © 2016 Peter Gough. All rights reserved.
//

#import "newsViewController.h"

@interface newsViewController ()

@property(strong, nonatomic) IBOutlet UIWebView *newsWebView;

@end

@implementation newsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL* news = [[NSURL alloc] initWithString:@"http://www.google.co.uk"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:news];
    [_newsWebView loadRequest:urlRequest];
    
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
