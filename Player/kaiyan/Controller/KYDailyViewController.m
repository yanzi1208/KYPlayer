//
//  KYDailyViewController.m
//  Player
//
//  Created by zky on 16/1/27.
//  Copyright © 2016年 ky. All rights reserved.
//

#import "KYDailyViewController.h"
#import "Masonry.h"
#import "UIImageView+WebCache.h"
#import "KxMovieViewController.h"


@interface KYDailyViewController ()

@property (nonatomic, strong) UIView *videoView;
@property (nonatomic, strong) UIImageView *videoImageView;
@property (nonatomic, strong) UIButton *playButton;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *descLabel;

@end

@implementation KYDailyViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor clearColor]];
    
    [self setUpUI];
}

- (void)setUpUI {

    
    self.videoView = [[UIView alloc] init];
    [self.view addSubview:self.videoView];
    [self.videoView setBackgroundColor:[UIColor whiteColor]];
    
    self.videoImageView = [[UIImageView alloc] init];
    [self.videoView addSubview:self.videoImageView];
    [self.videoImageView setContentMode:UIViewContentModeScaleAspectFill];
    [self.videoImageView sd_setImageWithURL:[NSURL URLWithString: self.videoModel.coverForDetail]];
    
    self.playButton = [[UIButton alloc] init];
    [self.videoView addSubview:self.playButton];
    [self.playButton addTarget:self action:@selector(playButtonClick:) forControlEvents: UIControlEventTouchUpInside];
    [self.playButton.layer setMasksToBounds:YES];
    [self.playButton.layer setCornerRadius:40];
    [self.playButton.layer setBorderWidth:3];
    [self.playButton.layer setBorderColor:[UIColor blackColor].CGColor];
    self.playButton.alpha = 0.8;
    
    [self.playButton setImage:[UIImage imageNamed:@"btn_play"] forState:UIControlStateNormal];
    [self.playButton setImageEdgeInsets:UIEdgeInsetsMake(-10, -10, -10, -10)];
   
    self.nameLabel = [[UILabel alloc] init];
    [self.videoView addSubview:self.nameLabel];
    [self.nameLabel setFont:[UIFont systemFontOfSize:20]];
    [self.nameLabel setText:self.videoModel.title];
    [self.nameLabel setBackgroundColor:[UIColor redColor]];
    
    self.descLabel = [[UILabel alloc] init];
    [self.videoView addSubview:self.descLabel];
    [self.descLabel setFont:[UIFont systemFontOfSize:18]];
    [self.descLabel setText:self.videoModel.desc];
    [self.descLabel setNumberOfLines:0];
    
    
    
    [self.videoView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(64);
        make.left.right.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
    
    [self.playButton makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.centerY.equalTo(self.videoImageView);
        make.size.equalTo(CGSizeMake(80, 80));
    }];
    
    [self.videoImageView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.videoView);
        make.left.equalTo(self.videoView);
        make.right.equalTo(self.videoView);
        make.height.equalTo(APP_SCREEN_WIDTH *0.95);
    }];
    
    [self.nameLabel makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.videoImageView.bottom).offset(15);
        make.left.equalTo(self.videoImageView).offset(20);
    }];

    [self.descLabel makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nameLabel.top).offset(5);
        make.left.equalTo(self.nameLabel);
        make.right.equalTo(self.videoImageView).offset(-20);
        make.height.equalTo(200);
    }];
}




- (void)playButtonClick:(UIButton *)sender {

    UIViewController *vc = [[UIViewController alloc] init];
    vc = [KxMovieViewController movieViewControllerWithContentPath:self.videoModel.playUrl parameters:nil];
    [self presentViewController:vc animated:YES completion:nil];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
