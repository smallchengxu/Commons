//
//  BaseTabBarCtr.m
//  ChildrenSong
//
//  Created by shengyang xie on 2018/12/19.
//  Copyright © 2018 chen liang. All rights reserved.
//

#import "BaseTabBarCtr.h"
#import "BaseNavCtr.h"
#import "AlphabetController.h"
#import "HanziController.h"
#import "HanziPartController.h"

@interface BaseTabBarCtr ()

@end

@implementation BaseTabBarCtr

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AlphabetController *alphabetVC = [[AlphabetController alloc] init];
    [self addChildViewController:alphabetVC title:@"学字母" image:[UIImage imageNamed:@"shu_normal"] selectedImage:[UIImage imageNamed:@"shu_selected"]];
    
    HanziController *hanziVC = [[HanziController alloc] init];
    [self addChildViewController:hanziVC title:@"学汉字" image:[UIImage imageNamed:@"shu_normal"] selectedImage:[UIImage imageNamed:@"shu_selected"]];
    
    HanziPartController *hanziParkVC = [[HanziPartController alloc] init];
    [self addChildViewController:hanziParkVC title:@"游乐园" image:[UIImage imageNamed:@"shu_normal"] selectedImage:[UIImage imageNamed:@"shu_selected"]];
    
}

- (void)addChildViewController:(UIViewController *)childController
                         title:(NSString *)title
                         image:(UIImage *)image
                 selectedImage:(UIImage *)selectedImage {
    
    BaseNavCtr *baseNavc = [[BaseNavCtr alloc] initWithRootViewController:childController];
    childController.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childController.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSDictionary *dict_normal = @{
                           NSForegroundColorAttributeName : [UIColor colorWithHexString:@"8a8a8a"],
                           };
    NSDictionary *dict_selected = @{
                           NSForegroundColorAttributeName : ThemeColor,
                           };
    [childController.tabBarItem setTitleTextAttributes:dict_normal forState:UIControlStateNormal];
    [childController.tabBarItem setTitleTextAttributes:dict_selected forState:UIControlStateSelected];
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
