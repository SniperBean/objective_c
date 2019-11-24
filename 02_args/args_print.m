#import <Foundation/Foundation.h>
#include <stdio.h>

char* get_ordinal (int number) {
	if (number == 1)
		return "st";
	else if (number == 2)
		return "nd";
	else
		return "th";
}

int main (int argc, char * argv[]) {
	int count = 1;
	while (count < argc && argv[argc - 1] != '\0') {
		printf("%d%s argument is: '%s'\n", count, get_ordinal(count),  argv[count]);
		count++;
	}
}

