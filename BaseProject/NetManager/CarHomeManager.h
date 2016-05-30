//
//  CarHomeManager.h
//  BaseProject
//
//  Created by 孟瑞瑞 on 16/5/21.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
//http://app.api.autohome.com.cn/autov5.0.0/news/newslist-pm1-c0-nt3-p4-s30-l0.json
@interface CarHomeManager : BaseNetManager
+(id)getCarHomeWithLastTime:(NSString *)lasttime kCompletionHandle;
@end
