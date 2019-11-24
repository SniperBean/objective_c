#import <Foundation/Foundation.h>

typedef void (^CompletionBlock)();
@interface SampleClass:NSObject
@property int x;

-(void) performActionWithCompletion:(CompletionBlock)completionBlock;
@end

@implementation SampleClass {
	int x;
}

@synthesize x;

-(void) performActionWithCompletion:(CompletionBlock) completionBlock {
	int addon = 5;
	x = 2;
	NSLog(@"Action!!! x is %d and line, it will be the number %d", x, addon);
	x += addon;
	completionBlock();
}
@end

int main() {
	SampleClass *sampleClass = [SampleClass new];
	[sampleClass performActionWithCompletion:^{
		NSLog(@"I am down blow the block. x is %d noew", sampleClass.x);
	}];

	return 0;
}
