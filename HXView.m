//
//  HXView.m
//  TextCollectionView
//
//  Created by 刘怀轩 on 2017/7/13.
//  Copyright © 2017年 刘怀轩. All rights reserved.
//

#import "HXView.h"

@implementation HXView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.delegate respondsToSelector:@selector(clickView)]) {
        [self.delegate clickView];
    }
}

@end
