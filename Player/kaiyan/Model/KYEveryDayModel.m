//
//  KYEveryDayModel.m
//  Player
//
//  Created by zky on 16/1/22.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYEveryDayModel.h"
#import "MJExtension.h"
#import "KYNetworkTools.h"
#import "KYDailyListModel.h"


@implementation KYEveryDayModel

+ (instancetype) everyDayWithDict:(NSDictionary *)dict {

    [KYEveryDayModel mj_setupObjectClassInArray:^NSDictionary *{
        return @{
                  @"dailyList" : [KYDailyListModel class]
                 };
    }];
    
    KYEveryDayModel *everyDayModel = [KYEveryDayModel mj_objectWithKeyValues:dict];
    return everyDayModel;
}

- (NSDictionary *)mj_objectClassInArray
{
    return @{@"dailyList": [KYDailyListModel class]
             };
}


@end

