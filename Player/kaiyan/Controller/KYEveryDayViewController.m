//
//  KYEveryDayViewController.m
//  Player
//
//  Created by zky on 16/1/17.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYEveryDayViewController.h"
#import "KxMovieViewController.h"
#import "KYEveryDayCell.h"
#import "KYNetworkTools.h"
#import "UIImageView+WebCache.h"
#import "KYEveryDayModel.h"
#import "KYVideoListModel.h"
#import "MJExtension.h"
#import "KYDailyListModel.h"
#import "KYDailyViewController.h"


@interface KYEveryDayViewController ()

@property (nonatomic, strong) KYEveryDayModel *everyModel;

@end

@implementation KYEveryDayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"开眼";
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.rowHeight = [UIScreen mainScreen].bounds.size.width * 0.56;
    
    [self loadData];
}

- (void)loadData{
    
    NSString *dateTime = [self getCurrentTime];
    NSString *urlStr = [NSString stringWithFormat:@"http://baobab.wandoujia.com/api/v1/feed?num=10&date=%@&vc=166&u=19b9a5ac1eeb745b6ef2cdb9829f79662a376126&v=1.9.1&f=iphone", dateTime];
    
    [[KYNetworkTools sharedInstance] getWithURL:urlStr params:nil success:^(NSDictionary *dict) {
        
        self.everyModel = [KYEveryDayModel everyDayWithDict:dict];
        
        [self.tableView reloadData];

    } failure:^(NSError *error) {
        NSLog(@"error == %@", error);
    }];
}


/// 获取当前日期
- (NSString *)getCurrentTime{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyyMMdd"];
    NSString *dateTime = [formatter stringFromDate:[NSDate date]];
    return dateTime;

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.everyModel.dailyList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    KYDailyListModel *dailyModel = self.everyModel.dailyList[section];

    return dailyModel.videoList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *reuseId = @"everyDay";
    KYEveryDayCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (cell == nil) {
        cell = [[KYEveryDayCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseId];
    }
    
    KYDailyListModel *dailyModel = self.everyModel.dailyList[indexPath.section];
    KYVideoListModel *videoModel = dailyModel.videoList[indexPath.row];
    
    
    [cell.bgImage sd_setImageWithURL:[NSURL URLWithString:videoModel.coverForDetail]];

    
    return cell;
}


#pragma mark - delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    KYDailyListModel *dailyModel = self.everyModel.dailyList[indexPath.section];
    KYVideoListModel *videoModel = dailyModel.videoList[indexPath.row];
    
    KYDailyViewController *dailyVC = [[KYDailyViewController alloc] init];
    dailyVC.videoModel = videoModel;
    [self.navigationController pushViewController:dailyVC animated:YES];
    

}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {

    return 30;
}

@end
