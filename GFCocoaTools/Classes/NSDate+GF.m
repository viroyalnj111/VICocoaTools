//
//  NSDate+GF.m
//  GFCocoaTools
//
//  Created by guofengld on 2017/3/14.
//  Copyright © 2017年 guofengld@gmail.com. All rights reserved.
//

#import "NSDate+GF.h"

@implementation NSDate (GF)

+ (NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day
                    hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second {
    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    NSDateComponents *components = [calendar components:unit fromDate:[NSDate date]];
    components.year     = year;
    components.month    = month;
    components.day      = day;
    components.hour     = hour;
    components.minute   = minute;
    components.second   = second;
    
    return [calendar dateFromComponents:components];
}

- (NSDateComponents *)components {
    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    return [calendar components:unit fromDate:self];
}

- (NSInteger)year {
    return [self components].year;
}

- (NSInteger)month {
    return [self components].month;
}

- (NSInteger)day {
    return [self components].day;
}

- (NSInteger)week {
    return [self components].weekOfYear;
}

- (NSInteger)hour {
    return [self components].hour;
}

- (NSInteger)minute {
    return [self components].minute;
}

- (NSInteger)second {
    return [self components].second;
}

- (BOOL)sameYearTo:(NSDate *)date {
    return self.year == date.year;
}

- (BOOL)sameMonthTo:(NSDate *)date {
    return [self sameYearTo:date] && self.month == date.month;
}

- (BOOL)sameDayTo:(NSDate *)date {
    return [self sameMonthTo:date] && self.day == date.day;
}

- (long)secondsSince1970 {
    long seconds = self.timeIntervalSince1970;
    return seconds;
}

@end
