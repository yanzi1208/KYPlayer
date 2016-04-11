//
//  KYMovieCell.m
//  Player
//
//  Created by zky on 16/1/21.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYEveryDayCell.h"
#import "Masonry.h"

@interface KYEveryDayCell ()

@property (nonatomic, strong) UIView *bgView;


@end

@implementation KYEveryDayCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        
        [self setUpUI];
        [self layoutSubviewsWithSubView];
    }
    return  self;
}

- (void) setUpUI {

    self.bgView = [[UIView alloc] init];
    [self.contentView addSubview:self.bgView];
    [self.bgView setBackgroundColor:[UIColor clearColor]];
    
    self.bgImage = [[UIImageView alloc] init];
    [self.bgView addSubview:self.bgImage];
    
}

- (void)layoutSubviewsWithSubView {

    [self.bgView remakeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.contentView);
        make.top.equalTo(self.contentView);
        make.height.equalTo(self.contentView);
    }];
    
    [self.bgImage remakeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.equalTo(self.bgView);
    }];
    
}



@end
