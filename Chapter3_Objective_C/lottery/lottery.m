#import <Foundation/Foundation.h>
#import "LotteryEnry.h"

int main (int argc, const char * argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSCalendarDate *now = [[NSCalendarDate alloc] init];
	
	srandom(time(NULL));
	NSMutableArray *array;
	array = [[NSMutableArray alloc] init];
	
	int i;
	for (i = 0; i < 10; i++) {
		NSCalendarDate *iWeeksFromNow;
		iWeeksFromNow = [now dateByAddingYears:0 
										months:0
										  days:(i * 7) 
										 hours:0
									   minutes:0
									   seconds:0];
		
		LotteryEntry *newEntry = [[LotteryEntry alloc] init];
		[newEntry prepareRandomNumbers];
		[newEntry setEntryDate:iWeeksFromNow];
		[array addObject:newEntry];
	}
	
	for (i = 0; i < 10; i++) {
		NSLog(@"%@", entryToPrint);
	}
	
	[pool drain];
	return 0;
}