//
//  Person.m
//  NSNotification
//
//  Created by lizaveta shulskaya on 03.05.2018.
//  Copyright © 2018 lizaveta shulskaya. All rights reserved.
//

#import "Person.h"

NSString* const PersonHeightChangeNotification = @"PersonHeightChangeNotification";
NSString* const PersonWeightChangeNotification = @"PersonWeightChangeNotification";

NSString* const PersonHeightInfoKey = @"PersonHeightInfoKey";
NSString* const PersonWeightInfoKey = @"PersonWeightInfoKey";

@implementation Person

- (id)init
{
    self = [super init];
    if (self) {
        self.height = 160;
        self.weight = 50;
    }
    return self;
}

-(void) setHeight:(NSInteger)height{
    _height = height;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithInteger:height] forKey:PersonHeightInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:PersonHeightChangeNotification object:nil userInfo:dictionary];
}

-(void) setWeight:(NSInteger)weight{
    _weight = weight;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithInteger:weight] forKey:PersonWeightInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:PersonWeightChangeNotification object:nil userInfo:dictionary];
}

@end
