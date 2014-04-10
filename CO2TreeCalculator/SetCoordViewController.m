//
//  SetCoordViewController.m
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/9/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "SetCoordViewController.h"

@interface SetCoordViewController ()

@property (weak, nonatomic) IBOutlet UIButton *setCoordButton;


@end

@implementation SetCoordViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.setCoordButton.titleLabel setTextAlignment: NSTextAlignmentCenter];



}

- (IBAction)onSetCoordButtonPressed:(id)sender {
}



@end
