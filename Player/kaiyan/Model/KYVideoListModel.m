//
//  KYVideoListModel.m
//  Player
//
//  Created by zky on 16/1/23.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYVideoListModel.h"
#import "MJExtension.h"
#import "KYPlayInfoModel.h"
#import "KYConsumptionModel.h"
#import "KYProviderModel.h"

@implementation KYVideoListModel

+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"ID" : @"id",
             @"desc" : @"description"
             };
}

- (instancetype)init {

    if (self = [super init]) {
      
    [KYVideoListModel mj_setupObjectClassInArray:^NSDictionary *{
        return @{@"playInfo": [KYPlayInfoModel class]
                 };
    }];

    }
    return self;
}

+ (instancetype) videoListWithDict:(NSDictionary *)dict {
    
    KYVideoListModel *videoModel = [KYVideoListModel mj_objectWithKeyValues:dict];
    
    return videoModel;
}


@end
