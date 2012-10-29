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

@end
