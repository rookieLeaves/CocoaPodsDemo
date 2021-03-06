//
//  DDHWSearchTextField.m
//  CocoaPodsDemo_Example
//
//  Created by liexiang on 2020/11/18.
//  Copyright © 2020 2382890750@qq.com. All rights reserved.
//

#import "DDHWSearchTextField.h"

@implementation DDHWSearchTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        if (@available(iOS 8.2, *)) {
            self.font = [UIFont systemFontOfSize:14 weight:UIFontWeightRegular];
        } else {
        }
        self.textColor = UIColor.grayColor;
        
        [self setupView];
    }
    return self;
}

- (void)setupView
{
    //搜索框
    self.borderStyle = UITextBorderStyleNone;
    self.backgroundColor = UIColor.greenColor;
    
    //textField左视图
    UIView *leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 36, 36)];
    UIImageView *leftImageView = [[UIImageView alloc]initWithFrame:CGRectMake(12, 10, 16, 16)];
    leftImageView.contentMode = UIViewContentModeScaleAspectFit;
    leftImageView.image = [UIImage imageNamed:@"搜索-灰"];
    [leftView addSubview:leftImageView];
    self.leftViewMode = UITextFieldViewModeAlways;
    self.leftView = leftView;
    
    
    self.clearButtonMode = UITextFieldViewModeAlways;
    UIButton *clean = [self valueForKey:@"_clearButton"]; //key是固定的
    [clean setImage:[UIImage imageNamed:@"删除关闭叉红色"] forState:UIControlStateNormal];
    [clean setImage:[UIImage imageNamed:@"删除关闭叉红色"] forState:UIControlStateHighlighted];
}

#pragma mark - setter
- (void)setDd_placeholder:(NSString *)dd_placeholder
{
    _dd_placeholder = dd_placeholder;
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@",_dd_placeholder] attributes:@{NSForegroundColorAttributeName: UIColor.redColor,NSFontAttributeName:self.font}];
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    self.layer.cornerRadius = self.bounds.size.height/2.f;
    self.layer.masksToBounds = YES;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
