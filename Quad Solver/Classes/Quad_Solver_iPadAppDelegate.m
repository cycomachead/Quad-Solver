//
//  Quad_Solver_iPadAppDelegate.m
//  Quad Solver iPad
//
//  Created by Michael Ball on 11/18/10.
//  Copyright 2010 Leadership. All rights reserved.
//

#import "Quad_Solver_iPadAppDelegate.h"

@implementation Quad_Solver_iPadAppDelegate


@synthesize window;

@synthesize splitViewController;

@synthesize rootViewController;

@synthesize detailViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
    // Add the split view controller's view to the window and display.
    [window addSubview:splitViewController.view];
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [splitViewController release];
    [rootViewController release];
    [detailViewController release];
    [super dealloc];
}

@end
