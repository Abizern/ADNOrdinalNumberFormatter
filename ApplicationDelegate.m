//
//  AppDelegate.m
//  ADNOrdinalNumberFormatter
//
//  Created by Abizer Nasir
//

#import "ApplicationDelegate.h"

@implementation ApplicationDelegate

@synthesize window;
@synthesize inputField;
@synthesize number;

- (id)init  {	
    if (!(self = [super init])) {
        return nil; // Bail!
    }
    number = 50;	

    return self;
}

@end
