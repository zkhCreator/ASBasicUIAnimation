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
#import "BBSBasicEditView.h"

@interface ASBasicUIViewController ()

@property (nonatomic, strong) MyLinearLayout *contentLayout;
@property (nonatomic, strong) BBSBasicUIView *showView;
@property (nonatomic, strong) BBSBasicEditView *editView;


@end

@implementation ASBasicUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupView];
}

- (void)setupView {
    _contentLayout = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    _contentLayout.myMargin = 0;
    [self.view addSubview:_contentLayout];
    
    _showView = [[BBSBasicUIView alloc] init];
    _showView.backgroundColor = [UIColor redColor];
    _showView.myLeft = _showView.myRight = _showView.myTop = 0;
    _showView.myHeight = 400.f;
    [_contentLayout addSubview:_showView];
    
    _editView = [[BBSBasicEditView alloc] init];
    _editView.myMargin = 30.f;
    [_contentLayout addSubview:_editView];
}

@end
