//
//  MainViewController.h
//  Quad Solver
//
//  Created by Michael Ball on 7/31/09.
//  Copyright Michael Ball 2009. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, UITextFieldDelegate, UIAlertViewDelegate, UITextViewDelegate> {
	UITextField *varAfield;
	UITextField *varBfield;
	UITextField *varCfield;
	UITextView *answerLabel;
	
}

@property (nonatomic, retain) IBOutlet UITextField *varAfield;
@property (nonatomic, retain) IBOutlet UITextField *varBfield;
@property (nonatomic, retain) IBOutlet UITextField *varCfield;
@property (nonatomic, retain) IBOutlet UITextView *answerLabel;
- (IBAction)solveProblem:(id)sender;
- (IBAction)showInfo;

@end
