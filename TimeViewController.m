//
//  TimeViewController.m
//  HypnoTime
//
//  Created by Joe Coleman on 10/29/12.
//  Copyright (c) 2012 Joe Coleman. All rights reserved.
//

#import "TimeViewController.h"

@implementation TimeViewController
- (IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date] ;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setTimeStyle:NSDateFormatterMediumStyle] ;
    
    [timeLabel setText:[formatter stringFromDate:now]] ;
}

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    // call the superclass's designated initializer
    self = [super initWithNibName:nil
                           bundle:nil] ;
    
    if (self) {
        // get the tab bar item
        // when this UIViewController is added to a tabBar, the tabBarItem property is automatically created/set
        UITabBarItem *tbi = [self tabBarItem] ;
        
        // give it a label
        [tbi setTitle:@"Time"] ;
        
        // create a UIImage from a file
        UIImage *i = [UIImage imageNamed:@"Time.png"] ;
        // put the image on the tab bar item
        [tbi setImage:i] ;
    }
    
    return self ;
}

@end
