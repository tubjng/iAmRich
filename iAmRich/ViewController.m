//
//  ViewController.m
//  iAmRich
//
//  Created by tubjng on 6/11/15.
//  Copyright (c) 2015 tubjng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ruby;
@property (weak, nonatomic) IBOutlet UITextField *iamRich;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ruby.alpha = 0;
    self.iamRich.alpha = 0;
}
- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    [UIView animateWithDuration:4 animations:^{
        self.ruby.alpha = 1;
        NSLog(@"ruby's alpha = %1.0f", self.ruby.alpha);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:3 animations:^{
            self.iamRich.center = CGPointMake(self.iamRich.center.x, 360);
            self.iamRich.alpha = 1;
            
        } completion:nil];
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  }

@end
