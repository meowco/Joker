//
//  SignInViewController.m
//  Joker
//
//  Created by 猫儿出墙 on 16/4/27.
//  Copyright © 2016年 猫儿出墙. All rights reserved.
//

#define UIColorFromRGB(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]

#import "SignInViewController.h"
#import "ConnectViewController.h"

#import <Masonry.h>

@interface SignInViewController ()

@end

@implementation SignInViewController {
    UIButton *_signInButton;
    UIButton *_signOutButton;
    UIButton *_newAccountButton;
    UITextField *_accountTextField;
    UITextField *_passwordTextField;
    UIImageView *_maskImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *bgImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background"]];
    bgImage.frame = self.view.frame;
    [self.view addSubview:bgImage];
    
    
    _signInButton = [[UIButton alloc] init];
    _signOutButton = [[UIButton alloc] init];
    _signInButton.backgroundColor = UIColorFromRGB(0, 183, 238);
    _signOutButton.backgroundColor = UIColorFromRGB(0, 183, 238);
    _signOutButton.alpha = 0.8;
    _signInButton.alpha = 0.8;
    [_signInButton setTitle:@"登陆" forState:UIControlStateNormal];
    [_signInButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _signInButton.titleLabel.font = [UIFont systemFontOfSize: 25.0];
    [_signOutButton setTitle:@"注册" forState:UIControlStateNormal];
    [_signOutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _signOutButton.titleLabel.font = [UIFont systemFontOfSize: 25.0];
    _signOutButton.layer.cornerRadius = 20;
    _signInButton.layer.cornerRadius = 20;
    
    [self.view addSubview:_signOutButton];
    [self.view addSubview:_signInButton];
    
    [_signInButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(-215);
        make.left.mas_equalTo(25);
        make.size.mas_equalTo(_signOutButton);
        make.right.mas_equalTo(_signOutButton.mas_left).offset(-31);
    }];
    
    [_signOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(_signInButton.mas_bottom);
        make.right.mas_equalTo(-25);
    }];
    
    _accountTextField = [[UITextField alloc] init];
    _passwordTextField = [[UITextField alloc] init];
    _accountTextField.layer.borderWidth = 1.5;
    _passwordTextField.layer.borderWidth = 1.5;
    _accountTextField.layer.borderColor = [UIColor whiteColor].CGColor;
    _passwordTextField.layer.borderColor = [UIColor whiteColor].CGColor;
    _passwordTextField.textColor = UIColorFromRGB(145, 145, 145);
    _accountTextField.textColor = UIColorFromRGB(145, 145, 145);
    _passwordTextField.placeholder = @"密码";
    _accountTextField.placeholder = @"账号";
    _passwordTextField.textAlignment = NSTextAlignmentCenter;
    _accountTextField.textAlignment = NSTextAlignmentCenter;
    _passwordTextField.font = [UIFont fontWithName:@"Heiti SC" size:30];
    _accountTextField.font = [UIFont fontWithName:@"Heiti SC" size:30];
    _accountTextField.backgroundColor = [UIColor clearColor];
    _passwordTextField.backgroundColor = [UIColor clearColor];
    _accountTextField.layer.cornerRadius = 10;
    _passwordTextField.layer.cornerRadius = 10;

    [self.view addSubview:_accountTextField];
    [self.view addSubview:_passwordTextField];
    
    
    [_accountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(_passwordTextField.mas_top).offset(-27);
        make.left.mas_equalTo(58);
        make.right.mas_equalTo(-58);
    }];
    [_passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(_signInButton.mas_top).offset(-48);
        make.left.mas_equalTo(58);
        make.right.mas_equalTo(-58);
    }];
    
    _maskImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"mask"]];
    [self.view addSubview:_maskImageView];
    
    [_maskImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(_accountTextField.mas_bottom).offset(-5);
        make.top.mas_equalTo(20);
        make.left.mas_equalTo(50);
        make.right.mas_equalTo(-50);
    }];
    
    [_signInButton addTarget:self action:@selector(signIn) forControlEvents:UIControlEventTouchUpInside];
    [_signOutButton addTarget:self action:@selector(signOut) forControlEvents:UIControlEventTouchUpInside];
    
    _newAccountButton = [[UIButton alloc] init];
    _newAccountButton.backgroundColor = UIColorFromRGB(0, 183, 238);
    _newAccountButton.alpha = 0;
    [_newAccountButton setTitle:@"注册新用户" forState:UIControlStateNormal];
    [_newAccountButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _newAccountButton.titleLabel.font = [UIFont systemFontOfSize: 25.0];
    _newAccountButton.layer.cornerRadius = 20;
    
    [self.view addSubview:_newAccountButton];
    
    [_newAccountButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(_signInButton.mas_bottom);
        make.centerX.mas_equalTo(0);
        make.right.mas_equalTo(-100);
        make.left.mas_equalTo(100);
    }];
    
    [_newAccountButton addTarget:self action:@selector(signIn) forControlEvents:UIControlEventTouchUpInside];

}

- (void)signIn {
    ConnectViewController *VC = [[ConnectViewController alloc] init];
    [self presentModalViewController:VC animated:YES];
}

- (void)signOut {
    _accountTextField.placeholder = @"邮箱";
    _passwordTextField.placeholder = @"注册密码";
    _signOutButton.alpha = 0;
    _signInButton.alpha = 0;
    _newAccountButton.alpha = 0.8;

}

@end
