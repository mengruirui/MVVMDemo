//
//  CarHomeViewModel.m
//  BaseProject
//
//  Created by 孟瑞瑞 on 16/5/29.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "CarHomeViewModel.h"
#import "CarHomeManager.h"
#import "CarHomeModel.h"
@implementation CarHomeViewModel
-(NSInteger)newlistNumber
{
    return self.dataArr.count;
}
-(void)getDataFromNetCompleteHandle:(CompletionHandle)completionHandle
{
    //[self cancelTask];
   [CarHomeManager getCarHomeWithLastTime:self.lasttime completionHandle:^(CarHomeModel *model, NSError *error) {
        if (!error) {
            if ([_lasttime isEqualToString:@"0"]) {
                [self.dataArr removeAllObjects];
            }
        [self.dataArr addObjectsFromArray:model.result.newslist];
        }
        completionHandle(error);
    }];
}
-(void)getMoreDataCompletionHandle:(CompletionHandle)completionHandle
{
    self.lasttime = self.newlistModel.lasttime;
   return [self getDataFromNetCompleteHandle:completionHandle];
}
- (CarHomeResultNewslistModel *)newslistModelForRowInResultModel:(NSInteger)row
{
    self.newlistModel = self.dataArr[row];
    return self.dataArr[row];
}
-(void)refreshDataCompletionHandle:(CompletionHandle)completionHandle
{
   
    self.lasttime = @"0";
   return [self getDataFromNetCompleteHandle:completionHandle];
}

- (NSURL *)newlistIconURLWithForRow:(NSInteger )row;
{
    return [NSURL URLWithString:[self newslistModelForRowInResultModel:row].smallpic];
}

- (NSString *)titleWithForRow:(NSInteger )row;
{
    return [self newslistModelForRowInResultModel:row].title;
}
- (NSString *)replycountWithForRow:(NSInteger )row;
{
    return [NSString stringWithFormat:@"%ld",[self newslistModelForRowInResultModel:row].replycount];
}
- (NSString *)intacttimeWithForRow:(NSInteger )row;
{
    return [self newslistModelForRowInResultModel:row].intacttime;
}

@end
