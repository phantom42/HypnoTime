//
//  MapViewController.m
//  HypnoTime
//
//  Created by Joe Coleman on 10/29/12.
//  Copyright (c) 2012 Joe Coleman. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

- (void)loadView
{
    CGRect frame = [[UIScreen  mainScreen] bounds] ;
    MKMapView *view = [[MKMapView alloc] initWithFrame:frame] ;
    
    [self setView:view] ;
}
- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    // call the superclass's designated initializer
    self = [super initWithNibName:nil
                           bundle:nil];
    if (self) {
        // get the tab bar item
        // when this UIViewController is added to a tabBar, the tabBarItem property is automatically created/set
        UITabBarItem *tbi = [self tabBarItem] ;
        
        // give it a label
        [tbi setTitle:@"Map"] ;
        
       
    }
    
    return self ;
}

@end
