//
//  KYProviderModel.h
//  Player
//
//  Created by zky on 16/1/25.
//  Copyright © 2016年 ky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KYProviderModel : NSObject

@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * alias;
@property (nonatomic, copy) NSString * icon;

+ (instancetype) providerWithDict:(NSDictionary *)dict;
@end
