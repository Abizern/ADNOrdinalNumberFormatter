//
//  AppDelegate.h
//  ADNOrdinalNumberFormatter
//
//  Created by Abizer Nasir
//

#import <Cocoa/Cocoa.h>

@interface ApplicationDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    NSTextField *inputField;
    NSInteger number;

}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *inputField;
@property (assign) NSInteger number;

@end
