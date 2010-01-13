//
//  AppController.h
//  SpeakLine
//
//  Created by Bryan Woods on 1/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface AppController : NSObject {
	IBOutlet NSTextField *textField;
	IBOutlet NSButton *stopButton;
	IBOutlet NSButton *startButton;
	IBOutlet NSTableView *tableView;
	NSArray *voiceList;
	NSSpeechSynthesizer *speechSynth;
}
- (IBAction)sayIt:(id)sender;
- (IBAction)stopIt:(id)sender;
@end
