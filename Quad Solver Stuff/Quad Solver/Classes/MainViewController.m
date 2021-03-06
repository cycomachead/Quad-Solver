//
//  MainViewController.m
//  Quad Solver
//
//  Created by Michael Ball on 7/31/09.
//  Copyright Michael Ball 2009. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"



@implementation MainViewController
@synthesize varAfield;
@synthesize varBfield;
@synthesize varCfield;
@synthesize answerLabel;
NSInteger UIKBType = UIKeyboardTypeDecimalPad;


-(IBAction)solveProblem:(id)sender 
	{
	float varA = [varAfield.text floatValue];
	float varB = [varBfield.text floatValue];
	float varC = [varCfield.text floatValue];
	float varDisc;
	float varX1;
	float varX2;
	float varI1;
	float varI2;
	float coorX;
	float coorY;
	float deriv;
	NSString *opening = [[NSString alloc] initWithFormat:@""];
	NSString *symm = [[NSString alloc] initWithFormat:@""];
        
	 
	// get Discriminant for imaginary values
	// declare additional methods for vertex...
	varDisc = ( (pow(varB, 2))-(4*varA*varC) );
	coorX = ( (-1*varB)/(2*varA) );
	//coorX will also be used for line of symmetry
	coorY = ( (varA*(pow(coorX, 2))) + (varB*coorX) + varC);
	answerLabel.text = @"";
	self.answerLabel.showsVerticalScrollIndicator = YES;
	[self.answerLabel flashScrollIndicators];
	// clear text on SOLVE! so that it's clean after alert...
	
	
// =======================================	
//  Check to see if A is positve
//  Used to tell direction of parabola and sets string
	
	if ( varA > 0 )
	{
		opening = @"Up";
	}
	else if ( varA < 0 )
	{
		opening = @"Down";
	}
// =======================================	
// Derviative of Equation
	 deriv = varA*2; // add varB later
// =======================================
	 
// =======================================	
	 if (coorX == -0) 
		{
		 symm = @"Even";
		 coorX = coorX*-1;
		}
	else if (coorX == 0) 
		{
		 symm = @"Even";
		}
	 else if (coorX != 0) 
		{
		 symm = @"None";
		}
// =======================================	
	 
// =======================================
// If methods to do math work and display text.
	if (varA == 0) 
	{
		UIAlertView *zeroAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You cannot enter zero as a value for 'A' for there to be a quadratic equation." delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
		[zeroAlert show];
		[zeroAlert release];
   }
		
		else if (varDisc < 0) //solve the quadratic equation using varDisc, else if used to prevent roots of imaginary numbers.
		{
			varI1 = ( (-varB)/(2*varA) );
			varI2 = ( sqrt(-1*varDisc) )/( (2*varA) );
			if (varI1 == 0)
			   {
				varI1 = varI1*-1;
			   }
			NSString *String = [[NSString alloc] initWithFormat:@"Roots: \n%lf + %lfi or\n%lf - %lfi\n\nDiscriminant: \n%lf\n\nVertex:\n(%lf, %lf)\n\nAxis of Symmetry:\nX = %lf\n\nType of Symmetry:\n%@\n\nGraph Opens: %@\n\nDerivative:\n%lfx + %lf", varI1, varI2, varI1, varI2, varDisc, coorX, coorY, coorX, symm, opening, deriv, varB];
			answerLabel.text = String;
			answerLabel.textColor = [UIColor blackColor ];
			NSDate *future = [NSDate dateWithTimeIntervalSinceNow: .1];
			[NSThread sleepUntilDate:future];
			answerLabel.textColor = [UIColor clearColor];
            NSDate *future2 = [NSDate dateWithTimeIntervalSinceNow: .1];
			[NSThread sleepUntilDate:future2];
			answerLabel.textColor = [UIColor blackColor];
			[String release];
		}
		
		else if(varDisc > 0) 
		{
			varX1 = ( (-varB + ( sqrt(varDisc)) )/(2*varA) );
			varX2 = ( (-varB - ( sqrt(varDisc)) )/(2*varA) );
			NSString *String = [[NSString alloc] initWithFormat:@"Roots: \n%lf or %lf\n\nDiscriminant: \n%lf\n\nVertex:\n(%lf, %lf)\n\nAxis of Symmetry:\nX = %lf\n\nType of Symmetry:\n%@\n\nGraph Opens: %@\n\nDerivative:\n%lfx + %lf", varX1, varX2, varDisc, coorX, coorY, coorX, symm, opening, deriv, varB];
			answerLabel.text = String;
            answerLabel.textColor = [UIColor blackColor];
			NSDate *future = [NSDate dateWithTimeIntervalSinceNow: .1];
			[NSThread sleepUntilDate:future];
			answerLabel.textColor = [UIColor clearColor];
            NSDate *future2 = [NSDate dateWithTimeIntervalSinceNow: .1];
			[NSThread sleepUntilDate:future2];
			answerLabel.textColor = [UIColor blackColor];
			[String release];
		}
		
		else if(varDisc == 0) // Use == to actually compare results!!!!
		{
			varX1 = ( (-varB + ( sqrt(varDisc)) )/(2*varA) );
			NSString *String = [[NSString alloc] initWithFormat:@"There is only one root: \n%lf\n\nDiscriminant: \n%lf\n\nVertex:\n(%lf, %lf)\n\nAxis of Symmetry:\nX = %lf\n\nType of Symmetry:\n%@\n\nGraph Opens: %@\n\nDerivative:\n%lfx + %lf", varX1, varDisc, coorX, coorY, coorX, symm, opening, deriv, varB];
			answerLabel.text = String;
			answerLabel.textColor = [UIColor blackColor];
			NSDate *future = [NSDate dateWithTimeIntervalSinceNow: .1];
			[NSThread sleepUntilDate:future];
			answerLabel.textColor = [UIColor clearColor];
            NSDate *future2 = [NSDate dateWithTimeIntervalSinceNow: .1];
			[NSThread sleepUntilDate:future2];
			answerLabel.textColor = [UIColor blackColor];
			[String release];
		}
	
	//resignFirstResponder here so that when a user presses SOLVE
	//the keyboard still closes.  BOOL is for manual work.
	[varAfield resignFirstResponder];
	[varBfield resignFirstResponder];
	[varCfield resignFirstResponder];
	[opening release];
    [symm release];
		
	//end IBAction function here
	}
	
- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {
	 for (UIView* view in self.view.subviews) {
		if ([view isKindOfClass:[UITextField class]])
			[view resignFirstResponder];
	} 
   /* [varAfield resignFirstResponder];
    [varBfield resignFirstResponder];
    [varCfield resignFirstResponder]; */
}
                           

/*
 textFieldShouldReturn is a property of UITextField delegate which 
 is active when the user presses the return key. BOOL returns YES
 and the action is executed. resignFirstResponder tells the keyboard
 to close.  becomeFirstResponder moves on to next field.
*/
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {

	if (theTextField == varAfield) {
		//[varAfield resignFirstResponder];
		[varBfield becomeFirstResponder];
	}
	if (theTextField == varBfield) {
		//[varBfield resignFirstResponder];
		[varCfield becomeFirstResponder];
	}
	if (theTextField == varCfield) {
		[varCfield resignFirstResponder];
		//try to get only pragramtically solving problems and not allowing the user to invoke a solve command. Something in IB...
	}
	return NO;
	
}


		

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
	{
	
	// Change the keyboard type to DecimalPad if OS supports it.	
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 4.09) 
    {
		// UIKBType = UIKeyboardTypeNumbersAndPunctuation;
        UIKBType = UIKeyboardTypeDecimalPad;
    }
    else 
    {
        UIKBType = UIKeyboardTypeNumbersAndPunctuation;
    }	   
        
        (UITextField *)varAfield;
        {
            varAfield.keyboardType = UIKBType;
            
        }
        
        (UITextField *)varBfield; 
        {
            varBfield.keyboardType = UIKBType;
            
        }
        
        (UITextField *)varCfield; 
        {
            varCfield.keyboardType = UIKBType;
            
        }
    [super viewDidLoad];	
 }


		
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}


- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}


- (IBAction)showInfo {    
	
	FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
	controller.delegate = self;
	
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
}



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    
	[varAfield release];
	[varBfield release];
	[varCfield release];
	[answerLabel release];
    
    [super dealloc];
}


@end
