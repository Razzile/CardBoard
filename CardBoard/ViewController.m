//
//  ViewController.m
//  CardBoard
//
//  Created by callum taylor on 18/06/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import "ViewController.h"
#import "CardBoardCollectionView.h"
#import "CardBoardView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    CardBoardView *view = [[CardBoardView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
