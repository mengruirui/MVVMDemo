//
//  CarHomeManager.m
//  BaseProject
//
//  Created by 孟瑞瑞 on 16/5/21.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "CarHomeManager.h"
#import "CarHomeModel.h"
#define Kpath @"http://app.api.autohome.com.cn/autov5.0.0/news/newslist-pm1-c0-nt3-p4-s30-l%@.json"
@implementation CarHomeManager
//http://app.api.autohome.com.cn/autov5.0.0/news/newslist-pm1-c0-nt3-p4-s30-l0.json
+(id)getCarHomeWithLastTime:(NSString *)lasttime completionHandle:(void (^)(id, NSError *))completionHandle{
    NSString *path = [NSString stringWithFormat:Kpath,lasttime];
    
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([CarHomeModel objectWithKeyValues:responseObj],error);
    }];
}
@end
