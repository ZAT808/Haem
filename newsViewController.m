//
//  newsViewController.m
//  HaematologyApp
//
//  Created by Peter Gough on 20/08/2016.
//  Copyright © 2016 Peter Gough. All rights reserved.
//
//========================================================================================================

#import "newsViewController.h"

@interface newsViewController ()

@property(strong, nonatomic) IBOutlet UIWebView *newsWebView;


@end

@implementation newsViewController {
    UIView* loadingView;
}

//========================================================================================================
- (void)viewDidLoad {
    [super viewDidLoad];
    //load the page into the newsWebView outlet
    NSURL* news = [[NSURL alloc] initWithString:@"http://www.rpd-online.co.uk/haem/latestNews.php"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:news];
    [_newsWebView loadRequest:urlRequest];
    
    [_newsWebView addSubview:activityIndicator]; // add activity indicator while page loads ****
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
}

//==========If page is loading, show activity indicator, otherwise remove (stopAnimating) ================
- (void)loading {
    if (!_newsWebView.loading) {
        [activityIndicator stopAnimating];
    } else
        [activityIndicator startAnimating];
}

//========================================================================================================
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
