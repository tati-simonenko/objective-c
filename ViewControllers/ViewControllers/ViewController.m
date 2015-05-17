//
//  ViewController.m
//  ViewControllers
//
//  Created by T on 15.05.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) UIView * testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int cellCount, cellSize;
    
    CGFloat blackBoard = CGRectGetWidth(self.view.frame);
    
    cellCount = 8;
    cellSize = 30;
    
    UIView * chessBoard = [[UIView alloc] initWithFrame:CGRectMake(cellSize, cellSize, cellSize*cellCount, cellSize*cellCount)];
    
    chessBoard.backgroundColor = [UIColor lightGrayColor];
    chessBoard.autoresizingMask =   UIViewAutoresizingFlexibleTopMargin |
                                    UIViewAutoresizingFlexibleRightMargin |
                                    UIViewAutoresizingFlexibleBottomMargin |
                                    UIViewAutoresizingFlexibleLeftMargin;
    
    [self.view addSubview:chessBoard];
    
    for (int y = 0; y < cellCount; y++) {
        
        for (int x = 0; x < cellCount; x++) {
            
            if (x%2 == y%2) {
                
                UIView * square = [[UIView alloc] initWithFrame:CGRectMake(y*cellSize, x*cellSize, cellSize, cellSize)];
                [square setBackgroundColor: [UIColor blackColor]];
                
                [chessBoard addSubview:square];
                
            }
            
        }
        
    }
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
