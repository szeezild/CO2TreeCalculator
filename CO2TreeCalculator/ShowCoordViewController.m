//
//  ShowCoordViewController.m
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/9/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "ShowCoordViewController.h"
#import "SetCoordViewController.h"
#import "Coordinate.h"

@interface ShowCoordViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *showTableView;


@end

@implementation ShowCoordViewController

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
    
    Coordinate *coordA = [[Coordinate alloc]init];
    coordA.dict = @{@"name": @"Point A - Required", @"lat":@"", @"lng":@""};
    
    Coordinate *coordB = [[Coordinate alloc]init];
    coordB.dict = @{@"name": @"Point B - Required", @"lat":@"", @"lng":@""};
    
    Coordinate *coordC = [[Coordinate alloc]init];
    coordC.dict = @{@"name": @"Point C - Required", @"lat":@"", @"lng":@""};
    
    
    self.coordArray = [NSMutableArray arrayWithObjects:coordA, coordB, coordC, nil];
    

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.coordArray.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newCellID"];
    Coordinate *coord = [self.coordArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = coord.dict[@"name"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Latitude: %@    Longitude: %@", coord.dict[@"lat"], coord.dict[@"lng"]];
    
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender {
    
    NSIndexPath *indexPath = [self.showTableView indexPathForCell:sender];
    
    Coordinate *thisCoord = [self.coordArray objectAtIndex:indexPath.row];
    
    SetCoordViewController *newVC = segue.destinationViewController;
    
    newVC.coord = thisCoord;

}



@end





