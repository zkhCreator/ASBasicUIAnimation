//
//  ASTableViewListViewModel.h
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 24/09/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString *ASBasicUIAnimationCell;

@interface ASTableViewListViewModel : NSObject <UITableViewDataSource>

@property (nonatomic, copy, readonly) NSArray *dataArray;

@end
