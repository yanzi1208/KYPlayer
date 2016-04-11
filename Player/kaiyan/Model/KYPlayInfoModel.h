//
//  KYPlayInfoModel.h
//  Player
//
//  Created by zky on 16/1/25.
//  Copyright © 2016年 ky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KYPlayInfoModel : NSObject

@property (nonatomic, assign) NSInteger height;
@property (nonatomic, assign) NSInteger width;
@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * type;
@property (nonatomic, copy) NSString * url;

+ (instancetype) playInfoWithDict:(NSDictionary *)dict;
@end
