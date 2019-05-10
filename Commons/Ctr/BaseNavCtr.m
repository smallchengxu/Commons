//
//  BaseNavCtr.m
//  pinyin
//
//  Created by chen liang on 2018/12/15.
//  Copyright © 2018年 chen liang. All rights reserved.
//

#import "BaseNavCtr.h"
#import "UIColor+VCColorTool.h"
#import "UIImage+CreatImage.h"

@interface BaseNavCtr ()<UINavigationControllerDelegate>

@end

@implementation BaseNavCtr

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    [self configNavc];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)configNavc {
    self.navigationBar.translucent = NO;
    self.navigationBar.tintColor = RGBColorAlpha(254, 250, 243, 1.0);
    
    [self.navigationBar setBackgroundImage:[UIImage imageWithColor:ThemeColor] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[UIImage new]];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        UIViewController *ctr = self.topViewController;
        ctr.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:nil action:nil];
    }
    [super pushViewController:viewController animated:animated];
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
