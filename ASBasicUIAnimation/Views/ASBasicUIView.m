//
//  BBSBasicUIView.m
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 26/09/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import "ASBasicUIView.h"

@implementation ASBasicUIView

- (instancetype)init {
    if (self = [super init]) {
        _content = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
        _content.wrapContentSize = YES;
        _headerTextLabel = [[UILabel alloc] init];
        _contentTextLabel = [[UILabel alloc] init];
        [self setupView];
    }
    return self;
}

- (void)setupView {
    _content.myCenter = CGPointMake(0, 0);
    [self addSubview:_content];
    
    _headerTextLabel.myTop = 0;
    _headerTextLabel.text = @"这是标题相关的内容";
    [_headerTextLabel sizeToFit];
    _headerTextLabel.myLeft = 0;
    [_content addSubview:_headerTextLabel];
    
    _contentTextLabel.myTop = 20.f;
    _contentTextLabel.text = @"这是标题相关的内容";
    [_contentTextLabel sizeToFit];
    _contentTextLabel.myLeft = 0;
    [_content addSubview:_contentTextLabel];
}

@end
