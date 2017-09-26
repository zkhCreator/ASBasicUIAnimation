//
//  ASBasicUIViewController.m
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 25/09/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import "ASBasicUIViewController.h"
#import <MyLayout/MyLayout.h>
#import "BBSBasicUIView.h"

@interface ASBasicUIViewController ()

@property (nonatomic, strong) MyRelativeLayout *layout;

@property (nonatomic, strong) BBSBasicUIView *showView;

@property (nonatomic, strong) UITextField *headerText;
@property (nonatomic, strong) UITextField *contentText;

@property (nonatomic, strong) UITextField *headerColorTextField;
@property (nonatomic, strong) UITextField *contentColorTextField;

@property (nonatomic, strong) UITextField *headerFontSizeTextField;
@property (nonatomic, strong) UITextField *contentFontSizeTextField;

@property (nonatomic, strong) UIButton *updateLabel;

@end

@implementation ASBasicUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

}

- (void)setupView {
    _layout = [[MyRelativeLayout alloc] init];
    _layout.backgroundColor = [UIColor redColor];
    _layout.myTop =
    _layout.myTop = _layout.myLeft = _layout.myRight = 0;
    _layout.myHeight = 400.f;
    [self.view addSubview:_layout];
    
    _showView = [[BBSBasicUIView alloc] init];
    _showView.centerXPos.equalTo(_layout.centerXPos);
    _showView.centerYPos.equalTo(_layout.centerYPos);
    
    
}

@end
