//
//  HypnosisViewController.h
//  HypnoTime
//
//  Created by Joe Coleman on 10/28/12.
//  Copyright (c) 2012 Joe Coleman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HypnosisView.h"

@interface HypnosisViewController : UIViewController
{
    // set these as instance vars so we can access them easier from methods
    HypnosisView *v ; // kept var name from tutorial even though it's not descriptive enough
    
}
@property(nonatomic) NSInteger selectedSegmentIndex ;
- (void)segmentChanged:(id)sender ;
@end
