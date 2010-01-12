//
//  LotteryEntry.m
//  lottery
//
//  Created by Bryan Woods on 1/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"


@implementation LotteryEntry

-(id)init
{
	return [self initWithEntryDate:[NSCalendarDate calendarDate]];
}

- (id)initWithEntryDate:(NSCalendarDate *)theDate
{
	if (![super init])
		return nil;
	
	entryDate = [theDate retain];
	firstNumber = random() % 100 + 1;
	secondNumber = random() % 100 + 1;
	return self;
}

- (void)setEntryDate:(NSCalendarDate *)date
{
	entryDate = date;
}

- (NSCalendarDate *)entryDate
{
	return entryDate;
}

- (int)firstNumber
{
	return firstNumber;
}

- (int)secondNumber
{
	return secondNumber;
}

- (NSString *)description
{
	NSString *result;
	result = [[NSString alloc] initWithFormat:@"%@Winning numbers are %hi and %hi.",
			  [entryDate descriptionWithCalendarFormat:@"%B %e, %Y: "],
			  firstNumber, secondNumber];
	return result;
}

- (void)dealloc
{
	NSLog(@"deallocing %@", self);
	[entryDate release];
	[super dealloc];
}

@end
