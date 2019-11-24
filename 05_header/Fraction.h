#import <Foundation/Foundation.h>

@interface Fraction:NSObject
@property int number, denominator;

-(void) print;
-(void) alert;
-(Fraction *) add: (Fraction *)b;
/*
透過property就不需要實作宣告對應實體變數
-(void) setNumber: (int)n;
-(void) setDenominator: (int)d;
*/
@end
