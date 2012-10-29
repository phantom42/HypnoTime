//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Joe Coleman on 10/28/12.
//  Copyright (c) 2012 Joe Coleman. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
    // create a view
    CGRect frame = [[UIScreen mainScreen] bounds] ;
    v = [[HypnosisView alloc] initWithFrame:frame] ;
    
    // set it as *the* view of this view controller
    [self setView: v] ;
    
    // create a UISegmentedControl. requires an array of items for button labels
    // we'll also dynamically size/position it towards the bottom. 
    NSArray *controlItems = [NSArray arrayWithObjects:@"Red",@"Green",@"Blue", nil];
    CGFloat segmentHeight = 50 ;
    CGFloat segmentTop = frame.size.height - 125 ;
    CGFloat segmentLeft = 25 ;
    CGFloat segmentWidth = frame.size.width - 50 ;
    CGRect segmentRect = CGRectMake(segmentLeft, segmentTop, segmentWidth, segmentHeight) ;
    UISegmentedControl *segmentControl = [[UISegmentedControl alloc] initWithItems:controlItems] ;
    [segmentControl setFrame:segmentRect] ;
    [segmentControl addTarget:self
                       action:@selector(segmentChanged:)
             forControlEvents:UIControlEventValueChanged] ;
    
    // now add the segment control to the view as a subview
    [v addSubview:segmentControl] ;
}
- (void)segmentChanged:(id)sender
{
    NSInteger segmentSelected = [sender selectedSegmentIndex];
    switch (segmentSelected){
        case 0: // red
            [v setCircleColor:[UIColor redColor]] ;
            break ;
        case 1: // green
            [v setCircleColor:[UIColor greenColor]] ;
            break ;
        case 2: // blue
            [v setCircleColor:[UIColor blueColor]] ;
            break ;
    }
    
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
        [tbi setTitle:@"Hypnosis"] ;
        
        // create a UIImage from a file
        UIImage *i = [UIImage imageNamed:@"Hypno.png"] ;
        
        // put that image on the tab bar item
        [tbi setImage:i] ;
    }
    
    return self ;
}

- (void)viewDidLoad
{
    // always call the super implementation of viewDidLoad
    [super viewDidLoad] ;
    
    NSLog(@"HypnosisViewController loaded its view.") ;
}
@end
