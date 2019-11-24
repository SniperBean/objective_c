#import <Foundation/Foundation.h>

@protocol PrintProtocolDelegate
- (void) processCompleted;

@end

@interface PrintClass:NSObject {
	id delegate;
}

- (void) printDetails;
- (void) setDelegate:(id)newDelegate;

@end

@implementation PrintClass
- (void) printDetails {
	NSLog(@"printing detail");
	[delegate processCompleted];
	}

- (void) setDelegate:(id)newDelegate {
	delegate = newDelegate;
	}

@end

@interface SampleClass:NSObject<PrintProtocolDelegate>
- (void) startAction;

@end

@implementation SampleClass
- (void) startAction {
	PrintClass *printClass = [PrintClass new];
	[printClass setDelegate:self];
	[printClass printDetails];
}

- (void) processCompleted{
	NSLog(@"Printing Process Completed");
}

@end

int main() {
	@autoreleasepool{
		SampleClass *sampleClass = [SampleClass new];
		[sampleClass startAction];
	}
	return 0;
}
