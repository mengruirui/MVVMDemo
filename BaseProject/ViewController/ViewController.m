//
//  ViewController.m
//  BaseProject
//
//  Created by jiyingxin on 15/10/22.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "CarHomeViewModel.h"
#import "CarHomeTableViewCell.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)CarHomeViewModel *carVM;
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation ViewController


-(CarHomeViewModel *)carVM
{
    if (!_carVM) {
        _carVM = [CarHomeViewModel new];
    }
    return _carVM;
}
-(UITableView *)tableView
{
    
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:(UITableViewStylePlain)];
        [self.view addSubview:_tableView];
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[CarHomeTableViewCell class] forCellReuseIdentifier:@"Cell"];
    }
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        
        [self.carVM refreshDataCompletionHandle:^(NSError *error) {
            if (error) {
                [self showErrorMsg:error];
            }else
            {
                [_tableView reloadData];
            }
            [_tableView.mj_header endRefreshing];
            NSLog(@"11111");
        }];
        
    }];
    _tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
        [self.carVM getMoreDataCompletionHandle:^(NSError *error) {
            if (error) {
                [self showErrorMsg:error];
            }
            else
            {
                [_tableView reloadData];
            }
            [_tableView.mj_footer endRefreshing];
        }];
    }];
    return _tableView;
}
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView.mj_header beginRefreshing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return _carVM.newlistNumber;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CarHomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.titleLabel.text = [_carVM titleWithForRow:indexPath.row];
    
    NSArray *arr = [[_carVM intacttimeWithForRow:indexPath.row]componentsSeparatedByString:@" "];
    //2015/3/30 10:26:26
    
    NSString *str = arr[0];
    NSArray *arr1 = [str componentsSeparatedByString:@"/"];
    cell.timeLabel.text = [NSString stringWithFormat:@"%@-%@-%@",arr1[0],arr1[1],arr1[2]];
    cell.replyLabel.text = [NSString stringWithFormat:@"%@评论",[_carVM replycountWithForRow:indexPath.row]];
    [cell.newsImageView sd_setImageWithURL:[_carVM newlistIconURLWithForRow:indexPath.row]];
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
