//
//  BBSBasicEditView.m
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 26/09/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import "ASBasicEditView.h"

@implementation ASBasicEditView

- (instancetype)init {
    self = [super init];
    if (self) {
        self.wrapContentSize = YES;
        
        _headerText = [self createTextFieldWithPlaceHolder:@"标题"];
        _contentText = [self createTextFieldWithPlaceHolder:@"内容"];
        
        _headerColorTextField = [self createTextFieldWithPlaceHolder:@"标题颜色"];
        _contentColorTextField = [self createTextFieldWithPlaceHolder:@"内容颜色"];
        
        _headerFontSizeTextField = [self createTextFieldWithPlaceHolder:@"标题字体大小"];
        _contentFontSizeTextField = [self createTextFieldWithPlaceHolder:@"内容字体大小"];
        
        _updateButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _updateButton.backgroundColor = [UIColor redColor];
        _updateButton.layer.cornerRadius = 10.f;
        [_updateButton setTitle:@"点击更新" forState:UIControlStateNormal];
        
        [self setupView];
    }
    return self;
}

- (void)setupView {
    _headerText.myLeft = 0;
    _headerText.myWidth = 100.f;
    _headerText.myHeight = 30.f;
    _headerText.myLeft = 0;
    _headerText.borderStyle = UITextBorderStyleRoundedRect;
    
    [self addSubview:_headerText];
    
    _contentText.leftPos.equalTo(_headerText.rightPos).offset(20.f);
    _contentText.myRight = 0;
    _contentText.myTop = 0;
    [self addSubview:_contentText];

    _headerColorTextField.myLeft = 0;
    _headerColorTextField.topPos.equalTo(_headerText.bottomPos).offset(12.f);
    _headerColorTextField.myWidth = 100.f;
    [self addSubview:_headerColorTextField];

    _contentColorTextField.topPos.equalTo(_headerColorTextField);
    _contentColorTextField.leftPos.equalTo(_headerColorTextField.rightPos).offset(20.f);
    _contentColorTextField.myRight = 0;
    [self addSubview:_contentColorTextField];

    _headerFontSizeTextField.topPos.equalTo(_headerColorTextField.bottomPos).offset(12.f);
    _headerFontSizeTextField.myLeft = 0;
    _headerFontSizeTextField.myWidth = 100.f;
    [self addSubview:_headerFontSizeTextField];

    _contentFontSizeTextField.topPos.equalTo(_headerFontSizeTextField);
    _contentFontSizeTextField.leftPos.equalTo(_headerFontSizeTextField.rightPos).offset(20.f);
    _contentFontSizeTextField.myRight = 0;
    [self addSubview:_contentFontSizeTextField];

    _updateButton.mySize = CGSizeMake(100.f, 50.f);
    _updateButton.topPos.equalTo(_contentFontSizeTextField.bottomPos).offset(12.f);
    _updateButton.myCenterX = 0;
    [self addSubview:_updateButton];
}

- (UITextField *)createTextFieldWithPlaceHolder:(NSString *)placeString {
    UITextField *textField = [[UITextField alloc] init];
    textField.placeholder = placeString;
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.myHeight = 30.f;
    return textField;
}

@end
