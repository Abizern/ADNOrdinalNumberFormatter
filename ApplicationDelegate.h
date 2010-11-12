//
//  AppDelegate.h
//  ADNOrdinalNumberFormatter
//
//  Created by Abizer Nasir
//

#import <Cocoa/Cocoa.h>
@class ADNOrdinalNumberFormatter;

@interface ApplicationDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    NSTextField *inputField;
    NSInteger number;
    
    ADNOrdinalNumberFormatter *numberFormatter;

}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *inputField;
@property (assign) NSInteger number;

@end
