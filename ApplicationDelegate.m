//
//  AppDelegate.m
//  ADNOrdinalNumberFormatter
//
//  Created by Abizer Nasir
//

#import "ApplicationDelegate.h"
#import "ADNOrdinalNumberFormatter.h"

@implementation ApplicationDelegate

@synthesize window;
@synthesize inputField;
@synthesize number;

- (id)init  {	
    if (!(self = [super init])) {
        return nil; // Bail!
    }
    number = 50;
	[numberFormatter = [ADNOrdinalNumberFormatter alloc] init];
    [numberFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
    [numberFormatter setMinimum:[NSNumber numberWithInteger:0]];
    [numberFormatter setMaximum:[NSNumber numberWithInteger:200]];

    return self;
}

- (void)awakeFromNib {
	[[self.inputField cell] setFormatter:numberFormatter];
}

@end
