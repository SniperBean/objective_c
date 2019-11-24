#import "Fraction.h"

@implementation Fraction {
	int number;
	int denominator;
}

@synthesize number, denominator;

-(void) print{
	NSLog(@"%d / %d = %.2f", number, denominator, (float)number/denominator);
	[self alert];
}

-(void) alert{
	NSLog(@"I am a alert to test self method");
}

-(Fraction *) add: (Fraction *) b {
	number = number * b.denominator + denominator * b.number;
	denominator = denominator * b.denominator;
	return b;
}

/*
使用synthesize 可產生對應的accessormethod
即不需要自行定義setter & getter

-(void) setNumber: (int) n {
	number = n;
}

-(void) setDenominator: (int) d{
	denominator = d;
}
*/
@end

