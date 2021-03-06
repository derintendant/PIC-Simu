//
//  DSAppDelegate.h
//  PIC-Simu
//
//  Created by Dennis Stengele on 31/03/14.
//  Copyright (c) 2014 Dennis Stengele. All rights reserved.
//

@import Cocoa;
#import "PSVirtualPIC.h"

@interface PSAppDelegate : NSObject <NSApplicationDelegate> {
}
@property (weak) IBOutlet PSVirtualPIC *virtualPIC;

@property (weak) IBOutlet NSMenuItem *buttonMenu;
@property (weak) IBOutlet NSMenuItem *startButtonMenu;
@property (weak) IBOutlet NSMenuItem *stopButtonMenu;
@property (weak) IBOutlet NSMenuItem *resetButtonMenu;
@property (weak) IBOutlet NSMenuItem *stepButtonMenu;

@property (weak) IBOutlet NSToolbar *buttonToolbar;
@property (weak) IBOutlet NSToolbarItem *startButtonToolbar;
@property (weak) IBOutlet NSToolbarItem *stopButtonToolbar;
@property (weak) IBOutlet NSToolbarItem *stepButtonToolbar;
@property (weak) IBOutlet NSToolbarItem *resetButtonToolbar;
@property (weak) IBOutlet NSTableView *codeView;

@property (assign) NSTimer *nextInstructionRunLoopTimer;
@property (weak) IBOutlet NSSlider *clockSpeedSlider;

@property (assign) IBOutlet NSWindow *window;
- (IBAction)showPDFHelp:(id)sender;

- (void)breakpointReached;

@end
