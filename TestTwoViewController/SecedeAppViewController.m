//
//  SecedeAppViewController.m
//  TestTwoViewController
//
//  Created by lmy on 2019/4/8.
//  Copyright © 2019年 lmy. All rights reserved.
//

#import "SecedeAppViewController.h"
#import "ThirdViewController.h"

@interface SecedeAppViewController ()

@end

@implementation SecedeAppViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor orangeColor]];
    
    
    UIButton * but = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
    [but setBackgroundColor:[UIColor blackColor]];
    [but setTitle:@"Push" forState:UIControlStateNormal];
    [but setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [but addTarget:self action:@selector(butClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
}


- (void)butClick{
    ThirdViewController * tCtl = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:tCtl animated:YES];
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
