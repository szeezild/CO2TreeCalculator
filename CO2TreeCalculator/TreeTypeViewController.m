//
//  TreeTypeViewController.m
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/7/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "TreeTypeViewController.h"
#import "Pine.h"
#import "Eucalyptus.h"

@interface TreeTypeViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray *treeTypeArray;

@end

@implementation TreeTypeViewController



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

    self.title = @"Land Data";
    
    Pine *pine = [[Pine alloc] init];
    pine.name = @"Pine";
    
    Eucalyptus *eucalyptus = [[Eucalyptus alloc] init];
    eucalyptus.name = @"Eucalyptus";
    
    self.treeTypeArray = [NSMutableArray arrayWithObjects:pine, eucalyptus, nil];

    
    

}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.treeTypeArray.count;
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newCellID"];
    
    Pine *pine = 
    
//    set textLabels to array names
    cell.textLabel.text = @"yes";
    
    return cell;
}



@end










