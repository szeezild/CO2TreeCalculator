//
//  SiteViewController.m
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/7/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "NewSiteViewController.h"
#import "DataViewController.h"


@interface NewSiteViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *siteNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *locationTextField;

@property (weak, nonatomic) IBOutlet UITextView *siteDescriptionTextField;


@end

@implementation NewSiteViewController

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
   
    self.title = @"New Site";
    
}



- (IBAction)saveNewSiteButtonPressed:(id)sender {
    
    if ([self.siteNameTextField.text isEqualToString:@""]) {
        
//        call Alert screen - DO THIS LATER
//        NSLog(@"blank site");
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    
    DataViewController *dataVC = segue.destinationViewController;
    dataVC.title = self.siteNameTextField.text;
    
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.siteNameTextField resignFirstResponder];
    [self.locationTextField resignFirstResponder];
    [self.siteDescriptionTextField resignFirstResponder];
    return YES;
}


@end
