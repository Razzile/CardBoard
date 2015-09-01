//
//  CardBoardView.m
//  CardBoard
//
//  Created by callum taylor on 28/06/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import "CardBoardView.h"
#import "CardBoardCollectionView.h"
#import <Facade/UIView+Facade.h>
@interface CardBoardView ()

- (void)setupView;
@end

@implementation CardBoardView
@synthesize title, titleLable;
- (id)init {
    self = [super init];
    [self setupView];
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    [self setupView];
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    [self setupView];
    return self;
}


- (void)setupView {
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    // add effect to an effect view
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:blur];
    effectView.frame = self.frame;
    [self addSubview:effectView];
    
    titleLable = [UILabel new];
    titleLable.text = @"ayy"; //title;
    titleLable.textAlignment = NSTextAlignmentCenter;
    [self addSubview:titleLable];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    CardBoardCollectionView *collectionView = [[CardBoardCollectionView alloc] initWithFrame:CGRectMake(20, 20, 20, 20) collectionViewLayout:layout];
    [self addSubview:collectionView];
    
    [titleLable anchorTopCenterWithTopPadding:60 width:100 height:20];
    [collectionView alignUnder:titleLable centeredFillingWidthAndHeightWithLeftAndRightPadding:40 topAndBottomPadding:40];
}

@end
