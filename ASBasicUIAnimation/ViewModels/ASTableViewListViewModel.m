//
//  ASTableViewListViewModel.m
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 24/09/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import "ASTableViewListViewModel.h"

NSString const * ASBasicUIAnimationCell = @"ASBasicUIAnimationCell";

@interface ASTableViewListViewModel()

@property (nonatomic, copy) NSArray *dataArray;

@end

@implementation ASTableViewListViewModel

- (NSArray *)dataArray {
    if (!_dataArray) {
        _dataArray = @[@{@"title":@"UI查看"},
                       @{@"title":@"UE查看"}];
    }
    return _dataArray;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ASBasicUIAnimationCell"];
    cell.textLabel.text = self.dataArray[indexPath.row][@"title"];
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

@end
