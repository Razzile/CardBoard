//
//  CardBoardPageViewController.m
//  CardBoard
//
//  Created by callum taylor on 18/06/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import "CardBoardPageViewController.h"
#import "CardBoardCollectionViewController.h"

@interface CardBoardPageViewController ()
- (CardBoardCollectionViewController *)viewControllerAtIndex:(NSUInteger)index;
@end

@implementation CardBoardPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(CardBoardCollectionViewController *)viewController {
    NSUInteger index = viewController.index;
    if (index == 0) return nil;
    index--;
    
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(CardBoardCollectionViewController *)viewController {
    NSUInteger index = viewController.index;
    if (index == 0) return nil;
    index++;
    
    return [self viewControllerAtIndex:index];
}

- (CardBoardCollectionViewController *)viewControllerAtIndex:(NSUInteger)index {
    CardBoardCollectionViewController *vc = [[CardBoardCollectionViewController alloc] initWithCollectionViewLayout:nil];
    return vc;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
