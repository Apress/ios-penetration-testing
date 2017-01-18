#import <SpringBoard/SpringBoard.h>

%hook SpringBoard
-(void)applicatoinDidFinishLaunching:(id)application{
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"iOS Penetration Testing"
	message:@"Hello World, We are hooking up springboard"
	delegate:nil
	cancelButtonTitle:@"Close"
	otherButtonTitles:nil];
	[alert show];
	[alert release];	
}
%end