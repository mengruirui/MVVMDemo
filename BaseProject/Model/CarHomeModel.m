//
//  CarHomeModel.m
//  BaseProject
//
//  Created by 孟瑞瑞 on 16/5/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "CarHomeModel.h"

@implementation CarHomeModel

@end


@implementation CarHomeResultModel

+ (NSDictionary *)objectClassInArray{
    return @{@"newslist" : [CarHomeResultNewslistModel class]};
}

@end


@implementation CarHomeResultHeadlineinfoModel

@end


@implementation CarHomeResultTopnewsinfoModel

@end


@implementation CarHomeResultNewslistModel
+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID":@"id"};
}
@end


