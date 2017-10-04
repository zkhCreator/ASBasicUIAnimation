//
//  ASUIViewFontTitleViewModel.h
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 04/10/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ASUIViewFontViewModel : NSObject

@property (nonatomic, strong) NSString *contentString;
@property (nonatomic, strong) UIColor *stringColor;
@property (nonatomic, strong) UIColor *contentBackgroundColor;
@property (nonatomic, assign) CGFloat lineHeight;
@property (nonatomic, assign) CGFloat fontSize;
@property (nonatomic, assign) CGFloat maxWidth;

-(NSAttributedString *)getCurrentNSAttributeString;

@end
