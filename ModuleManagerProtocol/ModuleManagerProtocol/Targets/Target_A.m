//
//  Target_A.m
//  ModuleManagerProtocol
//
//  Created by hyj on 2018/6/21.
//  Copyright © 2018年 hyj. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"
@implementation Target_A
- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}
@end
