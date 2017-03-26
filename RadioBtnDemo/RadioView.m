//
//  RadioView.m
//  RadioBtnDemo
//
//  Created by 李晓飞 on 2017/3/23.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import "RadioView.h"
#import "Masonry.h"

#define kScreenWidth    [UIScreen mainScreen].bounds.size.width
#define kScreenHeight   [UIScreen mainScreen].bounds.size.height

@implementation RadioView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        CGFloat width = 150;
        CGFloat height = 45;
        for (NSInteger j=0; j<3; j++) {
            for (NSInteger i=0; i<2; i++) {
                RadioButton *radioBtn = [[RadioButton alloc] initWithFrame:CGRectMake((kScreenWidth - 2*width)/3 * (i+1) + 150 * i, 15 * (j+1) + height * j, width, height) WithTitle:@"按钮222"];
                radioBtn.backgroundColor = [UIColor lightGrayColor];
                radioBtn.tag = 100 + j*2 + i;
                [self addSubview:radioBtn];
                
                [radioBtn addTarget:self action:@selector(btnSelected:) forControlEvents:UIControlEventTouchUpInside];
            }
        }
    }
    return self;
}

- (void)btnSelected:(RadioButton *)btn {
    NSLog(@"dddd %li", btn.tag);
    for (RadioButton *subBtn in btn.superview.subviews) {
        if (subBtn.tag == btn.tag) {
            subBtn.showImgV.backgroundColor = [UIColor brownColor];
        }else {
            subBtn.showImgV.backgroundColor = [UIColor clearColor];
        }
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

@implementation RadioButton

- (instancetype)initWithFrame:(CGRect)frame WithTitle:(NSString *)titleStr {
    if (self = [super initWithFrame:frame]) {
        CGFloat height = frame.size.height;
        self.showImgV = [[UIImageView alloc] initWithFrame:CGRectMake(5, (height - 20)/2, 20, 20)];
        self.showImgV.layer.cornerRadius = 10;
        self.showImgV.layer.borderColor = [[UIColor brownColor] CGColor];
        self.showImgV.layer.borderWidth = 1.0f;
        [self addSubview:self.showImgV];
        //WithFrame:CGRectMake(5, (height - 20)/2, 20, 20)
//        [self.showImgV mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo();
//        }];
        
        self.textLbl = [[UILabel alloc] init];
//        self.textLbl.backgroundColor = [UIColor cyanColor];
        self.textLbl.text = titleStr;
        [self addSubview:self.textLbl];
        [self.textLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.showImgV.mas_right).with.offset(5);
            make.right.equalTo(self.mas_right).with.offset(0);
            make.top.equalTo(self.mas_top).with.offset(0);
            make.height.equalTo([NSNumber numberWithFloat:height]);
        }];
        
    }
    return self;
}




@end
