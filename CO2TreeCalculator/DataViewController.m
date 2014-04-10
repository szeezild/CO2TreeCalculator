//
//  DataViewController.m
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/7/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "DataViewController.h"
#import "TreeTypeViewController.h"
#import "Tree.h"


@interface DataViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *treeButton;

@property (weak, nonatomic) IBOutlet UITextField *treeAgeTextField;

@property (weak, nonatomic) IBOutlet UITextField *treesPerAcreTextField;

@end


@implementation DataViewController

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
    
    [self.treeButton.titleLabel setTextAlignment: NSTextAlignmentCenter];



    UIToolbar* keyboardDoneButtonView = [[UIToolbar alloc] init];
    [keyboardDoneButtonView sizeToFit];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                                               style:UIBarButtonItemStyleBordered target:self
                                                              action:@selector(doneClicked:)];
    [keyboardDoneButtonView setItems:[NSArray arrayWithObjects:doneButton, nil]];
    self.treeAgeTextField.inputAccessoryView = keyboardDoneButtonView;
    self.treesPerAcreTextField.inputAccessoryView = keyboardDoneButtonView;

}

- (IBAction)doneClicked:(id)sender
{
    [self.view endEditing:YES];
}

- (IBAction)unwindToDataVC:(UIStoryboardSegue *)sender {
    
    self.treeButton.titleLabel.text = self.tree.name;
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.treeAgeTextField resignFirstResponder];
    [self.treesPerAcreTextField resignFirstResponder];
    return YES;
}



- (IBAction)saveTimberDataButtonPressed:(id)sender {
}

@end
