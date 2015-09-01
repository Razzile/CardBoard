//
//  CardBoardView.h
//  CardBoard
//
//  Created by callum taylor on 28/06/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardBoardView : UIView

@property (nonatomic) NSString *title;
@property (nonatomic) UILabel *titleLable;
@property (copy) NSDictionary *apps; // copy or strong?



@end
