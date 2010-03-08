//
//  AppController.h
//  KVCFun
//
//  Created by Bryan Woods on 3/8/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface AppController : NSObject {
	int fido;
}

- (int)fido;
- (void)setFido:(int)x;
- (IBAction)incrementFido:(id)sender;

@end
