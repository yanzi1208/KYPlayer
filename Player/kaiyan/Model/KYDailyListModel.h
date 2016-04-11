//
//  KYDailyListModel.h
//  Player
//
//  Created by zky on 16/1/25.
//  Copyright © 2016年 ky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KYVideoListModel.h"


@interface KYDailyListModel : NSObject

@property (nonatomic, assign) NSInteger date;
@property (nonatomic, assign) NSInteger total;
@property (nonatomic, strong) NSArray *videoList;
@end
