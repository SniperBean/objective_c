#import <Foundation/Foundation.h>

int main() {
	int var = 20;
	int *ptr;
	ptr = &var;

	NSLog(@"Address of var variable: %p\n", &var);
	NSLog(@"Address stored in ip variable: %p\n", ptr);
	NSLog(@"Value of *ip variable: %d\n", *ptr);

	return 0;
}
