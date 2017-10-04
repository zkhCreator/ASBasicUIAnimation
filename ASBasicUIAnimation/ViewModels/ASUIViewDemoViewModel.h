//
//  ASUIViewDemoViewModel.h
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 04/10/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import "ASUIViewFontViewModel.h"

@interface ASUIViewDemoViewModel : NSObject

@property (nonatomic, strong) ASUIViewFontViewModel *titleViewModel;
@property (nonatomic, strong) ASUIViewFontViewModel *detailViewModel;
@property (nonatomic, assign) CGFloat lineSpace;
@property (nonatomic, assign) CGFloat maxWidth;

@end
