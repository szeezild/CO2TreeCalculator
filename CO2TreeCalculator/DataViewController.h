//
//  DataViewController.h
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/7/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tree.h"

@interface DataViewController : UIViewController

@property (strong, nonatomic) Tree *tree;


- (IBAction)doneClicked:(id)sender;

@end
