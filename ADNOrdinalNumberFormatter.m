//
//  ADNOrdinalNumberFormatter.m
//  ADNOrdinalNumberFormatter
//
//  Created by Abizer Nasir
//

#import "ADNOrdinalNumberFormatter.h"


@implementation ADNOrdinalNumberFormatter

- (NSString *)stringForObjectValue:(id)anObject {
    if (![anObject isKindOfClass:[NSNumber class]]) {
        return nil; // Bail!
    }
    
	if ([self minimum] && [anObject integerValue] < [[self minimum] integerValue]) {
		anObject = [self minimum];
	}
	
	if ([self maximum] && [anObject integerValue] > [[self maximum] integerValue]) {
		anObject = [self maximum];
	}
    
    NSString *strRepresentation = [anObject stringValue];
    NSString *lastDigit = [strRepresentation substringFromIndex:([strRepresentation length]-1)];
    
    NSString *ordinal;
    
    if ([strRepresentation hasSuffix:@"11"] || [strRepresentation hasSuffix:@"12"] || [strRepresentation hasSuffix:@"13"]) {
        ordinal = @"th";
    } else if ([lastDigit isEqualToString:@"1"]) {
        ordinal = @"st";
    } else if ([lastDigit isEqualToString:@"2"]) {
        ordinal = @"nd";
    } else if ([lastDigit isEqualToString:@"3"]) {
        ordinal = @"rd";
    } else {
        ordinal = @"th";
    }
    
    return [NSString stringWithFormat:@"%@%@", strRepresentation, ordinal];
}


- (BOOL)getObjectValue:(id *)anObject forString:(NSString *)string errorDescription:(NSString **)error {
    BOOL isSuccessful = NO;
    
    NSScanner *scanner;
    NSCharacterSet *letters = [NSCharacterSet letterCharacterSet];
    
    scanner = [NSScanner scannerWithString:string];
    [scanner setCaseSensitive:NO];
    [scanner setCharactersToBeSkipped:letters];
    
    NSInteger integerNumber;
    
    if ([scanner scanInteger:&integerNumber]){
        isSuccessful = YES;
        if (anObject) {
            *anObject = [NSNumber numberWithInteger:integerNumber];
        }
    } else {
        if (error) {
            *error = [NSString stringWithFormat:@"Unable to create number from %@", string];
        }
    }
    
    return isSuccessful;
}



@end
