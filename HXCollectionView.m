//
//  HXCollectionView.m
//  TextCollectionView
//
//  Created by 刘怀轩 on 2017/7/13.
//  Copyright © 2017年 刘怀轩. All rights reserved.
//

#import "HXCollectionView.h"

@interface HXCollectionView ()<UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;
@end

@implementation HXCollectionView

static NSString * collectionCell = @"collectionCell";

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubviews];
    }
    return self;
}

- (void)addSubviews {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.frame collectionViewLayout:layout];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:collectionCell];
    layout.minimumLineSpacing = 5;
    layout.minimumInteritemSpacing = 5;
    collectionView.backgroundColor = [UIColor whiteColor];
    [self addSubview:collectionView];
    self.collectionView = collectionView;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionCell forIndexPath:indexPath];
    if (!cell) {
        cell = [[UICollectionViewCell alloc] init];
    }
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat width = (self.frame.size.width - 15) / 2;
    return CGSizeMake(width, width);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(5, 5, 5, 5);
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.didSelectItem) {
        self.didSelectItem(collectionView, indexPath);
    }
}

@end
