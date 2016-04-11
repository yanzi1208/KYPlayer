//
//  KYPlayInfoModel.m
//  Player
//
//  Created by zky on 16/1/25.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYPlayInfoModel.h"
#import "MJExtension.h"

@implementation KYPlayInfoModel

+ (instancetype) playInfoWithDict:(NSDictionary *)dict {
    
    KYPlayInfoModel *playInfoModel = [KYPlayInfoModel mj_objectWithKeyValues:dict];
    
    return playInfoModel;
}


@end