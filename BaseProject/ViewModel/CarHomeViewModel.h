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

@property (nonatomic)NSInteger newlistNumber;
- (NSURL *)newlistIconURLWithForRow:(NSInteger )row;
- (NSString *)titleWithForRow:(NSInteger )row;
- (NSString *)replycountWithForRow:(NSInteger )row;
- (NSString *)intacttimeWithForRow:(NSInteger )row;
@property (nonatomic,strong)NSString *lasttime;
@property (nonatomic,strong) CarHomeResultNewslistModel *newlistModel;
@end
