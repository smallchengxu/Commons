//
//  VCBasicTableView.m
//  vcleaders
//
//  Created by chen liang on 2017/11/8.
//  Copyright © 2017年 shinetechchina. All rights reserved.
//

#import "VCBasicTableView.h"

@implementation VCBasicTableView
#pragma mark - life cycle
- (void)awakeFromNib {
    [super awakeFromNib];
    [self adapterSystem11];
}
- (instancetype)init {
    self = [super init];
    [self adapterSystem11];
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    [self adapterSystem11];
    return self;
}
#pragma mark - tableView config
- (void)adapterSystem11 {
    self.estimatedSectionHeaderHeight = 0;
    self.estimatedSectionFooterHeight = 0;
    self.estimatedRowHeight = 0;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
