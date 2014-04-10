//
//  MapViewController.m
//  CO2TreeCalculator
//
//  Created by Dan Szeezil on 4/9/14.
//  Copyright (c) 2014 Dan Szeezil. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>


@interface MapViewController () <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (weak, nonatomic) IBOutlet UIButton *addCoordButton;
@property (weak, nonatomic) IBOutlet UIButton *finishCoordButton;
@property BOOL userLocationUpdated;

@end

@implementation MapViewController

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
    self.mapView.showsUserLocation = YES;

    [self.addCoordButton.titleLabel setTextAlignment: NSTextAlignmentCenter];
    [self.finishCoordButton.titleLabel setTextAlignment: NSTextAlignmentCenter];

    CLLocationCoordinate2D startCenter = CLLocationCoordinate2DMake(28.5407,-81.3786);
    CLLocationDistance regionWidth  = 1500;
    CLLocationDistance regionHeight  = 1500;
    
    MKCoordinateRegion startRegion =
    MKCoordinateRegionMakeWithDistance(startCenter, regionWidth, regionHeight);

    self.mapView.mapType = MKMapTypeHybrid;
    [self.mapView setRegion:startRegion animated:YES];
    
    
}

- (IBAction)addCoordButtonPressed:(id)sender {
}

- (IBAction)finishCoordButtonPressed:(id)sender {
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    
    if(!self.userLocationUpdated) {
        [self.mapView setCenterCoordinate:
         userLocation.location.coordinate];
        self.userLocationUpdated = YES;
    }
    
}





@end









