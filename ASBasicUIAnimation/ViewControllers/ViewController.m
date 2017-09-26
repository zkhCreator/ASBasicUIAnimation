//
//  ViewController.m
//  ASBasicUIAnimation
//
//  Created by 章凯华 on 24/09/2017.
//  Copyright © 2017 zkhCreator. All rights reserved.
//

#import "ViewController.h"
#import "ASTableViewListViewModel.h"
#import "ASBasicUIViewController.h"

@interface ViewController () <UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) ASTableViewListViewModel *listViewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _listViewModel = [[ASTableViewListViewModel alloc] init];
    _tableView.dataSource = _listViewModel;
    _tableView.delegate = self;
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"ASBasicUIAnimationCell"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        [self presentViewController:[[ASBasicUIViewController alloc] init] animated:YES completion:nil];
    }
}

@end
