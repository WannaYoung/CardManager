//
//  NSDate+Additions.h
//  DZQB
//
//  Created by Chunjia Wei on 13-12-31.
//  Copyright (c) 2013年 fuiou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Additions)

+(NSString *)defaultFormatStringFromDate:(NSDate *)date;

+(NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format;

+(NSDate *)defaultFormatDateFromString:(NSString *)strDate;

+(NSDate *)dateFromString:(NSString *)strDate withFormat:(NSString *)format;

//一个月前的今天
+(NSDate *)lastMonthInToday;

//当前时间申请时间为节点传入借款天数
+(NSDate *)someDayTodayWith:(NSString*)timeDayInterval;


@end
