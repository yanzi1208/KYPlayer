//
//  KYProviderModel.m
//  Player
//
//  Created by zky on 16/1/25.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYProviderModel.h"
#import "MJExtension.h"

@implementation KYProviderModel

+ (instancetype) providerWithDict:(NSDictionary *)dict {
    
    KYProviderModel *providerModel = [KYProviderModel mj_objectWithKeyValues:dict];
    
    return providerModel;
}


@end
