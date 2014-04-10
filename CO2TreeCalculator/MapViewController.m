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

@property (weak, nonatomic) IBOutlet UISegmentedControl *mapTypeController;


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

    CLLocationCoordinate2D startCenter = CLLocationCoordinate2DMake(29.95776,-90.0627);
    CLLocationDistance regionWidth  = 1200;
    CLLocationDistance regionHeight  = 1200;
    
    MKCoordinateRegion startRegion =
    MKCoordinateRegionMakeWithDistance(startCenter, regionWidth, regionHeight);

    [self.mapView setRegion:startRegion animated:YES];
    
//    I dont think I need this, but not sure
//    [self.mapView reloadInputViews];
    
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

- (IBAction)mapTypeChanged:(id)sender {
    
    switch (self.mapTypeController.selectedSegmentIndex) {
        case 0:
            self.mapView.mapType = MKMapTypeStandard;
            break;
        case 1:
            self.mapView.mapType = MKMapTypeSatellite;
            break;
        default:
            break;
    }
    
}



@end









