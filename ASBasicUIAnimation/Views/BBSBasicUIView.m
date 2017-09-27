//
//  BBSBasicUIView.m
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 26/09/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import "BBSBasicUIView.h"

@implementation BBSBasicUIView

- (instancetype)init {
    if (self = [super init]) {
        _content = [[UIView alloc] init];
        _headerTextLabel = [[UILabel alloc] init];
        _contentTextLabel = [[UILabel alloc] init];
        
        [self setupView];
    }
    return self;
}

- (void)setupView {
    _content.myCenter = CGPointMake(0, 0);
    [self addSubview:_content];
    
    [_content addSubview:_headerTextLabel];
    [_content addSubview:_contentTextLabel];
}

@end
