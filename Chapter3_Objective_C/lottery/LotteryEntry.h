//
//  LotteryEntry.h
//  lottery
//
//  Created by Bryan Woods on 1/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
	NSCalendarDate *entryDate;
	int firstNumber;
	int secondNumber;
}

- (void)setEntryDate:(NSCalendarDate *)date;
- (NSCalendarDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;
- (id)initWithEntryDate:(NSCalendarDate *)theDate;

@end
