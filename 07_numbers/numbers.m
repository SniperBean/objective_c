#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
- (NSNumber *)multiplyA:(NSNumber *)a withB:(NSNumber *)b;
@end

@implementation SampleClass

-(NSNumber *) multiplyA:(NSNumber *)a withB:(NSNumber *)b {
	NSNumber *result = [NSNumber numberWithFloat:(a.floatValue * b.floatValue)];
	return result;
}
@end

int main() {
	SampleClass *sampleClass = [SampleClass new];
	NSNumber *a = [NSNumber numberWithFloat:10.5];
	NSNumber *b = [NSNumber numberWithFloat:10.0];
	NSLog(@"%@ * %@ is %@", a, b, [sampleClass multiplyA:a withB:b]);
	return 0;
}
