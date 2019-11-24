#import <Foundation/Foundation.h>
#include "stdio.h"

int main (int argc, char * argv[]){
	//test the code into auto release pool
	@autoreleasepool{
		NSLog(@"Hello World!");
	}
	//declare the objective-c variable
	int sum = 50 + 25;
	NSLog(@"The sum of 50 and 25 is %d", sum);

	//this is a test for c libary
	printf("This is a function that named 'printf'.\n");
	printf("It would proved the C can be compiled\n");
	return 0;
}
