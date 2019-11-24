#import <Foundation/Foundation.h>

int main () {
	NSLog(@"Strong size for int : %lu \n", sizeof(int));
	NSLog(@"Strong size for float : %lu \n", sizeof(float));
	NSLog(@"Strong size for double : %lu \n", sizeof(double));
	NSLog(@"Strong size for char : %lu \n", sizeof(char));
	NSLog(@"Strong size for bool : %lu \n", sizeof(bool));
	NSLog(@"Strong size for short : %lu \n", sizeof(short));
	NSLog(@"Strong size for long : %lu \n", sizeof(long));
	return 0;
}
