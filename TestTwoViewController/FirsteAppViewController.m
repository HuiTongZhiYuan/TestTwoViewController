//
//  FirsteAppViewController.m
//  TestTwoViewController
//
//  Created by lmy on 2019/4/8.
//  Copyright © 2019年 lmy. All rights reserved.
//

#import "FirsteAppViewController.h"
#import "SecedeAppViewController.h"


@interface FirsteAppViewController ()

@end

@implementation FirsteAppViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor redColor]];
    
    
    
    
    UIWindow * window1 = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, 375/2, 667)];
    UIWindow * window2 = [[UIWindow alloc] initWithFrame:CGRectMake(375/2, 0, 375/2, 667)];
    
    [self.view addSubview:window1];
    [self.view addSubview:window2];
    
    
    SecedeAppViewController * ctl = [[SecedeAppViewController alloc] init];
    [ctl.view setBackgroundColor:[UIColor blueColor]];
    UINavigationController * navigationController1 = [[UINavigationController alloc] initWithRootViewController:ctl];
    [navigationController1 setNavigationBarHidden:YES animated:NO];
    window1.rootViewController = navigationController1;
    [window1 makeKeyAndVisible];
    
    
    
    SecedeAppViewController * mainViewController = [[SecedeAppViewController alloc] init];
    [mainViewController.view setBackgroundColor:[UIColor yellowColor]];
    UINavigationController * navigationController2 = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    [navigationController2 setNavigationBarHidden:YES animated:NO];
    window2.rootViewController = navigationController2;
    [window2 makeKeyAndVisible];
    
    
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
