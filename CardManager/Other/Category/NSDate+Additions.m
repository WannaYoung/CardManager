//
//  NSDate+Additions.m
//  DZQB
//
//  Created by Chunjia Wei on 13-12-31.
//  Copyright (c) 2013年 fuiou. All rights reserved.
//

#import "NSDate+Additions.h"

@implementation NSDate (Additions)

+(NSString *)defaultFormatStringFromDate:(NSDate *)date{
    
    return [self stringFromDate:date withFormat:@"yyyy-MM-dd"];
}


+(NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format{
    
    NSDateFormatter *df = [NSDateFormatter new];
    [df setDateFormat:format];
    NSString *strDate = [df stringFromDate:date];
    return strDate;
    
}


+(NSDate *)defaultFormatDateFromString:(NSString *)strDate{
    return [self dateFromString:strDate withFormat:@"yyyy-MM-dd"];
}


+(NSDate *)dateFromString:(NSString *)strDate withFormat:(NSString *)format{
    NSDateFormatter *df = [NSDateFormatter new];
    [df setDateFormat:format];
    NSDate *date = [df dateFromString:strDate];
    return date;


}

//一个月前的今天
+(NSDate *)lastMonthInToday{
    // 先定义一个遵循某个历法的日历对象
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  
    //  定义一个NSDateComponents对象，设置一个时间点
    NSDateComponents *dateComponentsAsTimeQantum = [[NSDateComponents alloc] init];
    [dateComponentsAsTimeQantum setMonth:-1];
   
    
    //  在当前历法下，获取 1 个月 前 的 时间点
    NSDate *dateFromDateComponentsAsTimeQantum = [greCalendar dateByAddingComponents:dateComponentsAsTimeQantum toDate:[NSDate date] options:0];
    return dateFromDateComponentsAsTimeQantum;
}

+(NSDate *)someDayTodayWith:(NSString*)timeDayInterval
{
    // 先定义一个遵循某个历法的日历对象
    NSCalendar *greCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];

    //  定义一个NSDateComponents对象，设置一个时间点
    NSDateComponents *dateComponentsAsTimeQantum = [[NSDateComponents alloc] init];
    //[dateComponentsAsTimeQantum setMonth:-1];
    
    [dateComponentsAsTimeQantum setDay:timeDayInterval.integerValue];


    //  在当前历法下，获取 某一天  的 时间点
    NSDate *dateFromDateComponentsAsTimeQantum = [greCalendar dateByAddingComponents:dateComponentsAsTimeQantum toDate:[NSDate date] options:0];
     return dateFromDateComponentsAsTimeQantum;
}



@end
