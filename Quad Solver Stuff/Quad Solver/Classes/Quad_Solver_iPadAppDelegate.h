//
//  Quad_Solver_iPadAppDelegate.h
//  Quad Solver iPad
//
//  Created by Michael Ball on 11/18/10.
//  Copyright 2010 Leadership. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@class DetailViewController;

@interface Quad_Solver_iPadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UISplitViewController *splitViewController;
    RootViewController *rootViewController;
    DetailViewController *detailViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UISplitViewController *splitViewController;

@property (nonatomic, retain) IBOutlet RootViewController *rootViewController;

@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;

@end
