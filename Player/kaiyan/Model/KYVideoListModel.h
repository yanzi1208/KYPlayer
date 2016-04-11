//
//  KYVideoListModel.h
//  Player
//
//  Created by zky on 16/1/23.
//  Copyright © 2016年 ky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KYConsumptionModel.h"
#import "KYProviderModel.h"

@interface KYVideoListModel : NSObject

@property (nonatomic, assign) NSInteger ID;
@property (nonatomic, assign) NSInteger date;
@property (nonatomic, assign) NSInteger idx;
@property (nonatomic, copy) NSString * title;
@property (nonatomic, copy) NSString * desc;
@property (nonatomic, copy) NSString * category;
@property (nonatomic, assign) NSInteger duration;
@property (nonatomic, copy) NSString * playUrl;
@property (nonatomic, strong) NSArray  * playInfo;
@property (nonatomic, strong) KYConsumptionModel * consumption;
@property (nonatomic, strong) KYProviderModel * provider;
@property (nonatomic, copy) NSString * author;
@property (nonatomic, copy) NSString * adTrack;
@property (nonatomic, copy) NSString * coverForFeed;
@property (nonatomic, copy) NSString * coverForDetail;
@property (nonatomic, copy) NSString * coverBlurred;
@property (nonatomic, copy) NSString * coverForSharing;
@property (nonatomic, copy) NSString * webUrl;
@property (nonatomic, copy) NSString * rawWebUrl;

+ (instancetype) videoListWithDict:(NSDictionary *)dict;

@end
