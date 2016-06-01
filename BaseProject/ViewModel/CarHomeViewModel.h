//
//  CarHomeViewModel.h
//  BaseProject
//
//  Created by 孟瑞瑞 on 16/5/29.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "CarHomeModel.h"
@interface CarHomeViewModel : BaseViewModel
//多少行
@property (nonatomic)NSInteger newlistNumber;
//每行的图片地址
- (NSURL *)newlistIconURLWithForRow:(NSInteger )row;
//每行的标题名
- (NSString *)titleWithForRow:(NSInteger )row;
//每行的评论数
- (NSString *)replycountWithForRow:(NSInteger )row;
//每行的时间
- (NSString *)intacttimeWithForRow:(NSInteger )row;

@property (nonatomic,strong)NSString *lasttime;
@property (nonatomic,strong) CarHomeResultNewslistModel *newlistModel;
@end
