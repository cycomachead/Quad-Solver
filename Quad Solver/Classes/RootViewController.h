//
//  RootViewController.h
//  Quad Solver iPad
//
//  Created by Michael Ball on 11/18/10.
//  Copyright 2010 Leadership. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface RootViewController : UITableViewController {
		
    DetailViewController *detailViewController;
}

		
@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;

@end
