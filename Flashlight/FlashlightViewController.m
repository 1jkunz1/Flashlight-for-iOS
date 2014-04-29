//
//  FlashlightViewController.m
//  MegaFlashlight
//
//  Created by Joseph Kunzler on 2/28/14.
//  Copyright (c) 2014 Joseph Kunzler. All rights reserved.
//

#import "FlashlightViewController.h"

@interface FlashlightViewController ()

@end

@implementation FlashlightViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    _onOff = YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonClicked:(id)sender {
    
   
    
    UIButton *button = (UIButton *)sender;
    
    
    if (!_onOff) {
        
        
        [self.view setBackgroundColor:[UIColor whiteColor]];
        
        
        [button setTitle:@"Off" forState:UIControlStateNormal];
    } else {
        
        
        
        [self.view setBackgroundColor:[UIColor blackColor]];
        
        
        [button setTitle:@"On" forState:UIControlStateNormal];
    }
    
    
    _onOff = !_onOff;
}
@end
