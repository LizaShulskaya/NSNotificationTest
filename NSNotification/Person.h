//
//  Person.h
//  NSNotification
//
//  Created by lizaveta shulskaya on 03.05.2018.
//  Copyright © 2018 lizaveta shulskaya. All rights reserved.
//

#import <Foundation/Foundation.h>


extern NSString* const PersonHeightChangeNotification;
extern NSString* const PersonWeightChangeNotification;

extern NSString* const PersonHeightInfoKey;
extern NSString* const PersonWeightInfoKey;

@interface Person : NSObject

@property (assign, nonatomic) NSInteger height;
@property (assign, nonatomic) NSInteger weight;

@end
