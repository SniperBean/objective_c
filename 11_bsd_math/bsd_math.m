#import <Foundation/Foundation.h>
#import <Kernel/math.h>

int main () {
    float number = 1.25;
    NSLog(@"input: %f", number);
    NSLog(@"ceil: %f", ceil(number));
    NSLog(@"floor: %f", floor(number));
    NSLog(@"round: %f", round(number));
}