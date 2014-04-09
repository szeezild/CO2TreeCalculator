//
//  DataViewController.m
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/7/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "DataViewController.h"
#import "TreeTypeViewController.h"
#import "Pine.h"
#import "Eucalyptus.h"

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
    
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    
//    TreeTypeViewController *treeTypeVC = segue.destinationViewController;
    
    
    
}

- (IBAction)unwindToDataVC:(UIStoryboardSegue *)sender {
    
    DataViewController *dataVC = sender.sourceViewController;
    
    NSIndexPath *indexPath =
    
//    UITableViewCell *cell = sender
    
    
    self.treeButton.titleLabel.text = dataVC.title;
    
    
}
//MagicalCreature *creature = [creatures objectAtIndex:indexPath.row];
//
//UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CreatureCell"];


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.treeAgeTextField resignFirstResponder];
    [self.treesPerAcreTextField resignFirstResponder];
    return YES;
}



- (IBAction)saveTimberDataButtonPressed:(id)sender {
}

@end
