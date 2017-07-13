//
//  HXCollectionView.h
//  TextCollectionView
//
//  Created by 刘怀轩 on 2017/7/13.
//  Copyright © 2017年 刘怀轩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HXCollectionView : UIView

@property (nonatomic, strong) void (^didSelectItem)(UICollectionView *collectionView, NSIndexPath *indexPath);
@property (nonatomic, strong) NSArray *dataArray;

@end
