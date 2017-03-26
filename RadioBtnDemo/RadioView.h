//
//  RadioView.h
//  RadioBtnDemo
//
//  Created by 李晓飞 on 2017/3/23.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RadioView : UIView

@end

@interface RadioButton : UIControl

@property (nonatomic, strong)UIImageView *showImgV;
@property (nonatomic, strong)UILabel *textLbl;

- (instancetype)initWithFrame:(CGRect)frame WithTitle:(NSString *)titleStr;

@end
