//
//  KYEveryDayModel.h
//  Player
//
//  Created by zky on 16/1/22.
//  Copyright © 2016年 ky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KYEveryDayModel : NSObject

@property (nonatomic, strong) NSArray * dailyList;
@property (nonatomic, copy) NSString * nextPageUrl;
@property (nonatomic, assign) NSInteger nextPublishTime;

+ (instancetype) everyDayWithDict:(NSDictionary *)dict;

@end


