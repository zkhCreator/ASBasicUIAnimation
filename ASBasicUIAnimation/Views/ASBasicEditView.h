//
//  BBSBasicEditView.h
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 26/09/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MyLayout/MyLayout.h>

@interface ASBasicEditView : MyRelativeLayout

@property (nonatomic, strong) UITextField *headerText;
@property (nonatomic, strong) UITextField *contentText;

@property (nonatomic, strong) UITextField *headerColorTextField;
@property (nonatomic, strong) UITextField *contentColorTextField;

@property (nonatomic, strong) UITextField *headerFontSizeTextField;
@property (nonatomic, strong) UITextField *contentFontSizeTextField;

@property (nonatomic, strong) UIButton *updateButton;

@end
