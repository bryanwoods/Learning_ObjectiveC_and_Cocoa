//
//  AppController.m
//  SpeakLine
//
//  Created by Bryan Woods on 1/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (id)init
{
	[super init];
	
	// Logs to help track down bugs
	NSLog(@"init");
	
	// Create a new instance of NSSpeechSynthesizer
	// With the default voice
	speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
	return self;
}

- (IBAction)sayIt:(id)sender
{
	NSString *string = [textField stringValue];
	
	// Is the string zero-length?
	if ([string length] == 0) {
		NSLog(@"string from %@ is of zero-length", textField);
		return;
	}
	[speechSynth startSpeakingString:string];
	NSLog(@"Have started to say: %@", string);
}

- (IBAction)stopIt:(id)sender
{
	NSLog(@"stopping");
	[speechSynth stopSpeaking];
}

@end
