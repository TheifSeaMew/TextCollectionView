//
//  HXView.h
//  TextCollectionView
//
//  Created by 刘怀轩 on 2017/7/13.
//  Copyright © 2017年 刘怀轩. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HXViewDelegate <NSObject>

- (void)clickView;

@end

@interface HXView : UIView

@property (nonatomic, weak) id<HXViewDelegate>delegate;

@end
