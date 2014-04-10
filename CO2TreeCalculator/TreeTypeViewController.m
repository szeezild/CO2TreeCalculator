//
//  TreeTypeViewController.m
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/7/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "TreeTypeViewController.h"
#import "DataViewController.h"
#import "Tree.h"


@interface TreeTypeViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray *treeTypeArray;

@property (weak, nonatomic) IBOutlet UITableView *treeTypeTableView;


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

    self.title = @"Tree Types";
    
    Tree *pine = [[Tree alloc] init];
    pine.name = @"Pine";
    
    Tree *eucalyptus = [[Tree alloc] init];
    eucalyptus.name = @"Eucalyptus";
    
    self.treeTypeArray = [NSMutableArray arrayWithObjects:pine, eucalyptus, nil];


}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.treeTypeArray.count;
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Tree *pine = [self.treeTypeArray objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newCellID"];
    
//    set textLabels to array names
    cell.textLabel.text = pine.name;

    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender {
    
    NSIndexPath *indexPath = [self.treeTypeTableView indexPathForCell:sender];
    
    Tree *tree = [self.treeTypeArray objectAtIndex:indexPath.row];
    
    DataViewController *vc = segue.destinationViewController;
    
//    the vc has a property pine that is being set to the instance of pine created above
    vc.tree = tree;
}



@end










