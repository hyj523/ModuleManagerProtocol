//
//  AViewController.m
//  ModuleManagerProtocol
//
//  Created by hyj on 2018/6/21.
//  Copyright © 2018年 hyj. All rights reserved.
//

#import "AViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>
#import <B_Category/CTMediator+B.h>
@interface AViewController ()
@property (nonatomic, strong) UIButton *pushBViewControllerButton;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.pushBViewControllerButton];
    // Do any additional setup after loading the view.
}
- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    [self.pushBViewControllerButton sizeToFit];
    [self.pushBViewControllerButton  centerEqualToView:self.view];
}
-(void)didTappedPushBViewControllerButton:(UIButton *)button
{
    UIViewController *vc = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"你好"];
    [self.navigationController pushViewController:vc animated:YES];
}
- (UIButton *)pushBViewControllerButton
{
    if(_pushBViewControllerButton == nil){
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBViewControllerButton;
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
