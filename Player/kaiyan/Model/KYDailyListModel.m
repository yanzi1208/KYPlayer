//
//  KYDailyListModel.m
//  Player
//
//  Created by zky on 16/1/25.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYDailyListModel.h"
#import "MJExtension.h"

@implementation KYDailyListModel


+ (instancetype) dailyListWithDict:(NSDictionary *)dict {
    
    [KYDailyListModel mj_setupObjectClassInArray:^NSDictionary *{
        return @{
                 @"videoList" : [KYVideoListModel class]
                 };
    }];
    
    KYDailyListModel *dailyModel = [KYDailyListModel mj_objectWithKeyValues:dict];
    
    return dailyModel;
}

- (instancetype)init {

    if (self = [super init]) {
        [KYDailyListModel mj_setupObjectClassInArray:^NSDictionary *{
            return @{
                     @"videoList" : [KYVideoListModel class]
                     };
        }];

    }
    return self;


}

//- (NSDictionary *)mj_objectClassInArray
//{
//    return @{@"videoList": [KYVideoListModel class]
//             };
//}

@end