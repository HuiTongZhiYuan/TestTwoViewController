//
//  ThirdViewController.m
//  TestTwoViewController
//
//  Created by lmy on 2019/4/8.
//  Copyright © 2019年 lmy. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecedeAppViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor purpleColor]];
    
    
    UIButton * but = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, 100, 100)];
    [but setBackgroundColor:[UIColor blackColor]];
    [but setTitle:@"Push" forState:UIControlStateNormal];
    [but setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [but addTarget:self action:@selector(butClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];
}


- (void)butClick{
    SecedeAppViewController * sCtl = [[SecedeAppViewController alloc] init];
    [self.navigationController pushViewController:sCtl animated:YES];
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
