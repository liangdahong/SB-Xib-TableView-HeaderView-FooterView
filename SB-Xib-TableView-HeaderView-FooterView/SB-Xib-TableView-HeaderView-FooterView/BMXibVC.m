//
//  BMXibVC.m
//  SB-Xib-TableView-HeaderView-FooterView
//
//  Created by ___liangdahong on 2017/9/14.
//  Copyright © 2017年 ___liangdahong. All rights reserved.
//

#import "BMXibVC.h"

@interface BMXibVC ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BMXibVC

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    {
        CGFloat height = [self.tableView.tableFooterView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
        CGRect footerFrame = self.tableView.tableFooterView.frame;
        footerFrame.size.height = height;
        self.tableView.tableFooterView.frame = footerFrame;
        self.tableView.tableFooterView = self.tableView.tableFooterView;
    }
    {
        CGFloat height = [self.tableView.tableHeaderView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
        CGRect headerFrame = self.tableView.tableHeaderView.frame;
        headerFrame.size.height = height;
        self.tableView.tableHeaderView.frame = headerFrame;
        self.tableView.tableHeaderView = self.tableView.tableHeaderView;
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [UITableViewCell new];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
