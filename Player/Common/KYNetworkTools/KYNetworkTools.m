//
//  KYNetworkManager.m
//  Player
//
//  Created by zky on 16/1/17.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYNetworkTools.h"

@implementation KYNetworkTools

+ (instancetype)sharedInstance {
    static KYNetworkTools *tools;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        tools = [[self alloc] initWithSessionConfiguration:config];
        
        //        tools.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
    });
    
    return tools;
}


//POST
- (void)postWithURL:(NSString *)url params:(id)params success:(KYHttpSuccess)success failure:(KYHttpFailure)failure
{
    KYNetworkTools *manager = [KYNetworkTools sharedInstance];
    manager.requestSerializer =  [AFHTTPRequestSerializer  serializer];
    manager.requestSerializer.timeoutInterval = 15;
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager POST:url parameters:params progress:nil
          success:^(NSURLSessionDataTask * task, id responseObject) {
              
              if (success){
                  success(responseObject);
              }
          } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
              if (failure) {
                  
                  NSLog(@"%s --- error", __FUNCTION__);
              }
          }];
    
}


//GET
- (void)getWithURL:(NSString *)url params:(NSDictionary *)params success:(KYHttpSuccess)success failure:(KYHttpFailure)failure
{
    
    KYNetworkTools *manager = [KYNetworkTools sharedInstance];
    manager.requestSerializer =  [AFHTTPRequestSerializer  serializer];
    manager.requestSerializer.timeoutInterval = 15;
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:url parameters:params progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             
             NSDictionary *jsonData = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
             
             if (success){
                 success(jsonData);
             }
         } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             if (failure) {
                 
                 NSLog(@"%s --- error", __FUNCTION__);
             }
         }];
    
}


@end
