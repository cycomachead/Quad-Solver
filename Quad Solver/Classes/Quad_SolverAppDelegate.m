//
//  Quad_SolverAppDelegate.m
//  Quad Solver
//
//  Created by Michael Ball on 7/31/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Quad_SolverAppDelegate.h"
#import "MainViewController.h"

@implementation Quad_SolverAppDelegate


@synthesize window;
@synthesize mainViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
	MainViewController *aController = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainViewController = aController;
	[aController release];
	
    mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
	[window addSubview:[mainViewController view]];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end
