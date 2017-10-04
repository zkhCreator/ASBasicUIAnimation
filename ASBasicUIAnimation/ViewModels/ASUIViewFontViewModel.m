//
//  ASUIViewFontTitleViewModel.m
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 04/10/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import "ASUIViewFontViewModel.h"

@interface ASUIViewFontViewModel()

@property (nonatomic, strong) NSDictionary *stringAttributes;

@end

@implementation ASUIViewFontViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _contentString = @"这是占位符，记得修改哟~~";
        _stringColor = [UIColor blackColor];
        _contentBackgroundColor = [UIColor clearColor];
        _lineHeight = 20.f;
        _fontSize = 17.f;
    }
    return self;
}

-(NSAttributedString *)getCurrentNSAttributeString {
    
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:_contentString attributes:self.stringAttributes];
    
    return string;
}

- (CGSize)getCurrentSize {
    
    // 计算样式对应的字体高度
    CGRect headerRect = [_contentString boundingRectWithSize:CGSizeMake(_maxWidth, CGFLOAT_MAX)
                                                       options:(NSStringDrawingUsesLineFragmentOrigin |
                                                                NSStringDrawingTruncatesLastVisibleLine)
                                                    attributes:self.stringAttributes
                                                       context:nil];
    
    return headerRect.size;
    
}

- (NSDictionary *)stringAttributes {
    // 设置段落样式
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    CGFloat headerLineHeight = _lineHeight;
    paragraphStyle.lineHeightMultiple = headerLineHeight;
    paragraphStyle.maximumLineHeight = headerLineHeight;
    paragraphStyle.minimumLineHeight = headerLineHeight;
    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:_fontSize],
                                 NSParagraphStyleAttributeName:paragraphStyle,
                                 };
    
    return attributes;
}

@end
