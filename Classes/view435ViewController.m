//
//  view435ViewController.m
//  view435
//
//  Created by mac on 2/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "view435ViewController.h"
#import "UIView+FullDescription.h"

@implementation view435ViewController

- (IBAction) changeLabel:(id) sender {
	label.text = [textField text];
	
}


- (IBAction) changeBackground:(id) sender {
	NSDictionary *keyWindowDescription = [[[UIApplication sharedApplication] keyWindow] fullDescription];
	BOOL value = [keyWindowDescription writeToFile:@"/Users/Jkt610/Desktop/test.txt" atomically:YES];
	NSLog(@"%d",value);
	//NSMutableDictionary *allKeys = [keyWindowDescription objectForKey:@"subviews"];
	//for (int i = 0; i < [allKeys count]; i++) {
	//	NSLog(@"Num keys: %@", [allKeys objectAtIndex:i]);
	//}
	//self.view.backgroundColor = [backColors objectAtIndex:index];
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return NO;
}

-(void) insertColors {
	backColors = [[NSMutableArray alloc] initWithCapacity:5];;
	[backColors insertObject:[UIColor redColor]  atIndex:0];
	[backColors insertObject:[UIColor whiteColor] atIndex:1];
	[backColors insertObject:[UIColor yellowColor] atIndex:2];
	[backColors insertObject:[UIColor greenColor] atIndex:3];
	[backColors insertObject:[UIColor blueColor] atIndex:4];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self insertColors];
	textField.delegate = self;
	
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
    [super dealloc];
}

@end
