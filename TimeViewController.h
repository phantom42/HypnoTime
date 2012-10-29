//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Joe Coleman on 10/29/12.
//  Copyright (c) 2012 Joe Coleman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController
{
    // set this as weak so it auto-unloads when the view is unloaded
    __weak IBOutlet UILabel *timeLabel ;
}
- (IBAction)showCurrentTime:(id)sender ;
@end
