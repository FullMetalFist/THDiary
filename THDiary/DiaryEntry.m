//
//  DiaryEntry.m
//  THDiary
//
//  Created by Michael Vilabrera on 9/15/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import "DiaryEntry.h"


@implementation DiaryEntry

@dynamic date;
@dynamic body;
@dynamic imageData;
@dynamic mood;
@dynamic location;

- (NSString *) sectionName
{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:self.date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM yyyy"];
    
    return [dateFormatter stringFromDate:date];
}

@end
