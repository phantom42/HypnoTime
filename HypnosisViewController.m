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
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame] ;
    
    // set it as *the* view of this view controller
    [self setView: v] ;
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
