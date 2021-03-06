//
//  BBSBasicUIView.h
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 26/09/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MyLayout/MyLayout.h>

@interface ASBasicUIView : MyRelativeLayout

@property (nonatomic, strong) MyLinearLayout *content;
@property (nonatomic, strong) UILabel *headerTextLabel;
@property (nonatomic, strong) UILabel *contentTextLabel;

@end
