//
//  CarHomeTableViewCell.m
//  BaseProject
//
//  Created by 孟瑞瑞 on 16/5/29.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "CarHomeTableViewCell.h"

@implementation CarHomeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(UIImageView *)newsImageView
{
    if (!_newsImageView) {
        _newsImageView = [UIImageView new];
        [self.contentView addSubview:_newsImageView];
        [_newsImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.mas_equalTo(5);
            make.bottom.mas_equalTo(-5);
            make.size.mas_equalTo(CGSizeMake(119, 77));
        }];
    }
    return _newsImageView;
}
-(UILabel *)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        [self.contentView addSubview:_titleLabel];
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.topMargin.mas_equalTo(self.newsImageView.mas_topMargin);
            make.left.mas_equalTo(self.newsImageView.mas_right).mas_offset(5);
            make.right.mas_equalTo(-40);
        }];
    }
    return _titleLabel;
}
-(UILabel *)timeLabel
{
    if (!_timeLabel) {
        _timeLabel = [UILabel new];
        [self.contentView addSubview:_timeLabel];
        [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leftMargin.mas_equalTo(self.titleLabel.mas_leftMargin);
            make.bottomMargin.mas_equalTo(self.newsImageView.mas_bottomMargin);
            //make.size.mas_equalTo(CGSizeMake(78, 17));
        }];
    }
    return _timeLabel;
}
-(UILabel *)replyLabel
{
    if (!_replyLabel) {
        _replyLabel = [UILabel new];
        _replyLabel.textAlignment =  NSTextAlignmentRight;
        [self.contentView addSubview:_replyLabel];
        [_replyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-8);
            make.topMargin.mas_equalTo(self.timeLabel.mas_topMargin);
            make.bottomMargin.mas_equalTo(self.timeLabel.mas_bottomMargin);
            make.left.mas_equalTo(self.timeLabel.mas_left).mas_offset(20);
        }];
    }
    return _replyLabel;
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //self.separatorInset = UIEdgeInsetsMake(0, 72, 0, 0);
    }
    return self;
}

@end
