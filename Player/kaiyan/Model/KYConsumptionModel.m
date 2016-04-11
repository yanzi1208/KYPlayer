//
//  KYConsumptionModel.m
//  Player
//
//  Created by zky on 16/1/25.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYConsumptionModel.h"
#import "MJExtension.h"

@implementation KYConsumptionModel

+ (instancetype) consumptionWithDict:(NSDictionary *)dict {
    
    KYConsumptionModel *consumptionModel = [KYConsumptionModel mj_objectWithKeyValues:dict];
    
    return consumptionModel;
}


@end
