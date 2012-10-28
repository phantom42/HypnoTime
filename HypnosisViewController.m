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

@end
