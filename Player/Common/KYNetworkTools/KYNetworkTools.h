//
//  KYNetworkManager.h
//  Player
//
//  Created by zky on 16/1/17.
//  Copyright © 2016年 ky. All rights reserved.
//


#import "AFHTTPSessionManager.h"

typedef void (^KYHttpSuccess)(NSDictionary *dict);
typedef void (^KYHttpFailure)(NSError *error);


@interface KYNetworkTools : AFHTTPSessionManager

/// 返回单例
+ (instancetype)sharedInstance;

///  post
- (void)postWithURL:(NSString *)url params:(id)params success:(KYHttpSuccess)success failure:(KYHttpFailure)failure;

///  get
- (void)getWithURL:(NSString *)url params:(NSDictionary *)params success:(KYHttpSuccess)success failure:(KYHttpFailure)failure;

@end
