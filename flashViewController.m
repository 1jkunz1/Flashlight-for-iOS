//
//  flashViewController.m
//  Flashlight
//
//  Created by Joseph Kunzler on 4/17/14.
//  Copyright (c) 2014 Joseph Kunzler. All rights reserved.
//

#import "flashViewController.h"
#import <AVFoundation/AVFoundation.h>


@interface flashViewController ()
    @property (weak, nonatomic) IBOutlet UIButton *toggleButton;
    @end

@implementation flashViewController
    
    
    
@synthesize toggleButton;
@synthesize isOn = _isOn;
    
- (void)setIsOn:(BOOL)isOn {
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    if ([device hasTorch]) {
        
        
        
        [device lockForConfiguration:nil];
        if (isOn == YES) {
            [device setTorchMode:AVCaptureTorchModeOn];
            [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
            [toggleButton setBackgroundColor:[UIColor blackColor]];
            [toggleButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            [toggleButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        }
        
        
        
        else {
            [device setTorchMode:AVCaptureTorchModeOff];
            [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
            [toggleButton setBackgroundColor:[UIColor whiteColor]];
            [toggleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [toggleButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
        }
    } else {
        [toggleButton setTitle:@"Flashlight not supported on your device." forState:UIControlStateNormal];
    }
    
    _isOn = isOn;
}
    
- (IBAction)toggleFlashlight:(id)sender {
    [self setIsOn:!self.isOn];
}
    
    
    
- (void)viewDidLoad
    {
        [super viewDidLoad];
        [[toggleButton layer] setCornerRadius:8.0f];
        [[toggleButton layer] setBorderWidth:1.0f];
        [self setIsOn:YES];
        
        
    }
    
- (void)viewDidUnload
    {
        [self setToggleButton:nil];
        [super viewDidUnload];
    }
    
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
    {
        return YES;
    }
    
    @end
