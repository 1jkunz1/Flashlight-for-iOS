//
//  FlashlightViewController.h
//  MegaFlashlight
//
//  Created by Joseph Kunzler on 2/28/14.
//  Copyright (c) 2014 Joseph Kunzler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlashlightViewController : UIViewController

@property (readwrite) BOOL onOff;

- (IBAction)buttonClicked:(id)sender;

@end
