#import <Foundation/Foundation.h>

@interface Denominate:NSObject
-(void) print;
-(void) setNumber: (int)n;
-(void) setDenominator: (int)d;
@end

@implementation Denominate{
	int number;
	int denominator;
}

-(void) print{
	NSLog(@"%d / %d = %.2f", number, denominator, (float)number/denominator);
}

-(void) setNumber: (int) n {
	number = n; 
}

-(void) setDenominator: (int) d{
	denominator = d;
}
@end

int main () {
	//allocate and initial the object
	Denominate *denominate;
	denominate = [Denominate alloc];
	denominate = [denominate init];
	[denominate setNumber: 3];
	[denominate setDenominator: 2];
	[denominate print];
	
	//new the object
	Denominate *denominate_new;
	denominate_new = [Denominate new];
	[denominate_new setNumber: 10];
	[denominate_new setDenominator: 3];
	[denominate_new print];
	return 0;
}
