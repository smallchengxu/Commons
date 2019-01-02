//
//  BaseTabBarCtr.m
//  ChildrenSong
//
//  Created by shengyang xie on 2018/12/19.
//  Copyright © 2018 chen liang. All rights reserved.
//

#import "BaseTabBarCtr.h"
#import "BaseNavCtr.h"
#import "UIView+Frame.h"

@interface BaseTabBarCtr ()

@end

@implementation BaseTabBarCtr

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)addChildViewController:(UIViewController *)childController
                         title:(NSString *)title
                         image:(UIImage *)image
                 selectedImage:(UIImage *)selectedImage {
    
    BaseNavCtr *baseNavc = [[BaseNavCtr alloc] initWithRootViewController:childController];
    childController.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childController.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSDictionary *dict = @{
                           NSForegroundColorAttributeName : [UIColor lightGrayColor],
                           };
    [childController.tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    [childController.tabBarItem setTitleTextAttributes:dict forState:UIControlStateSelected];
    childController.tabBarItem.title = title;
    [self addChildViewController:baseNavc];
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
