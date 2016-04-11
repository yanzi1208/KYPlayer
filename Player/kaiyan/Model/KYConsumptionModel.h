//
//  KYConsumptionModel.h
//  Player
//
//  Created by zky on 16/1/25.
//  Copyright © 2016年 ky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KYConsumptionModel : NSObject

@property (nonatomic, assign) NSInteger collectionCount;
@property (nonatomic, assign) NSInteger shareCount;
@property (nonatomic, assign) NSInteger playCount;
@property (nonatomic, assign) NSInteger replyCount;

+ (instancetype) consumptionWithDict:(NSDictionary *)dict;
@end
