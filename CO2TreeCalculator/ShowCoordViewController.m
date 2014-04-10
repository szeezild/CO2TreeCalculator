//
//  ShowCoordViewController.m
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/9/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "ShowCoordViewController.h"
#import "Coordinate.h"

@interface ShowCoordViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray *coordArray;

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
    
//    Coordinate *coordA = [[Coordinate alloc] init];
//    coordA.name = @"Point A";
//    coordA.lat = @87.9876;
//    coordA.lng = @-41.8854;
//    
//    Coordinate *coordB = [[Coordinate alloc] init];
//    coordB.name = @"Point B";
//    coordB.lat = @77.9876;
//    coordB.lng = @-51.8854;

    Coordinate *coordC = [[Coordinate alloc]init];
    coordC.dict = @{@"name": @"Point C", @"lat":@"87.54", @"lng":@"42.4533"};
    
    
    
    
    self.coordArray = [NSMutableArray arrayWithObjects:coordC, nil];
    

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.coordArray.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newCellID"];
    Coordinate *coord = [self.coordArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = coord.dict[@"name"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Lat is %@   Long is %@", coord.dict[@"lat"], coord.dict[@"lng"]];
    
    
    
    return cell;
}





@end





