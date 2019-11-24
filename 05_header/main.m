#import "Fraction.h"

int main () {
	//allocate and initial the object
	Fraction *fraction;
	fraction = [Fraction alloc];
	fraction = [fraction init];
	[fraction setNumber: 3];
	[fraction setDenominator: 2];
	[fraction print];

	//new the object
	Fraction *fraction_new;
	fraction_new = [Fraction new];
	[fraction_new setNumber: 10];
	[fraction_new setDenominator: 3];
	[fraction_new print];

	//using dot operator instead of bracket
	Fraction *fraction_super = [Fraction new];
	fraction_super.number = 100;
	fraction_super.denominator = 25;
	[fraction_super print];

	//Fraction a + Fraction b
	[fraction add:fraction_new];
	[fraction print];
	return 0;
}

