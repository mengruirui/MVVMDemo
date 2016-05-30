//
//  CarHomeModel.h
//  BaseProject
//
//  Created by 孟瑞瑞 on 16/5/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class CarHomeResultModel,CarHomeResultHeadlineinfoModel,CarHomeResultTopnewsinfoModel,CarHomeResultNewslistModel;
@interface CarHomeModel : BaseModel

@property (nonatomic, strong) CarHomeResultModel *result;

@property (nonatomic, assign) NSInteger returncode;

@property (nonatomic, copy) NSString *message;

@end
@interface CarHomeResultModel : NSObject

@property (nonatomic, assign) BOOL isloadmore;

@property (nonatomic, assign) NSInteger rowcount;

@property (nonatomic, strong) CarHomeResultHeadlineinfoModel *headlineinfo;

@property (nonatomic, strong) NSArray *focusimg;

@property (nonatomic, strong) NSArray<CarHomeResultNewslistModel *> *newslist;

@property (nonatomic, strong) CarHomeResultTopnewsinfoModel *topnewsinfo;

@end

@interface CarHomeResultHeadlineinfoModel : NSObject

@end

@interface CarHomeResultTopnewsinfoModel : NSObject

@end

@interface CarHomeResultNewslistModel : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, strong) NSArray *coverimages;

@property (nonatomic, copy) NSString *smallpic;

@property (nonatomic, assign) NSInteger dbid;

@property (nonatomic, assign) NSInteger replycount;

@property (nonatomic, copy) NSString *intacttime;

@property (nonatomic, copy) NSString *lasttime;

@property (nonatomic, copy) NSString *time;

@property (nonatomic, assign) NSInteger mediatype;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *updatetime;

@property (nonatomic, assign) NSInteger jumppage;

@property (nonatomic, copy) NSString *indexdetail;

@property (nonatomic, assign) NSInteger pagecount;

@property (nonatomic, assign) NSInteger newstype;

@end

