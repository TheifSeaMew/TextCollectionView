//
//  ViewController.m
//  TextCollectionView
//
//  Created by 刘怀轩 on 2017/7/13.
//  Copyright © 2017年 刘怀轩. All rights reserved.
//

#import "ViewController.h"
#import "HXCollectionView.h"
#import "HXView.h"

@interface ViewController ()<HXViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self text];
}

- (void)text2 {
    HXCollectionView *collectionView = [[HXCollectionView alloc] initWithFrame:self.view.bounds];
    collectionView.dataArray = @[@1, @1, @1, @1, @1, @1, @1, @1, @1, @1];
    [self.view addSubview:collectionView];
    collectionView.didSelectItem = ^(UICollectionView *collectionView, NSIndexPath *indexPath) {
        NSLog(@"%@", indexPath);
    };
}

- (void)text {
    HXView *redView = [[HXView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    redView.delegate = self;
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
}
- (void)clickView {
    NSLog(@"%s", __func__);
}


@end
