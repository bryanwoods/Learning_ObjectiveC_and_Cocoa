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
	result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",
			  [entryDate descriptionWithCalendarFormat:@"%b %d %Y"],
			  firstNumber, secondNumber];
	return result;
}

@end
