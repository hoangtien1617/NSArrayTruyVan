//
//  HW2+ArrayBack.m
//  NSArrayHW
//
//  Created by Hoàng Tiến on 10/7/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "HW2+ArrayBack.h"

@implementation NSArray (ArrayBack)
-(NSArray* ) getArray: (NSArray *) inputArray {
    BOOL had;
    NSMutableArray *team = [[NSMutableArray alloc] init];
    
    NSString *name = [[NSString alloc] init];
        for (int i = 0; i < [inputArray count]; i++) {
        name = [self getPlayer:i inTeam:inputArray];
        had = [self checkPlayer:name In:team];
        if (!had) {
            [team addObject:name];
        }
    }
    
    
    return team;
}

- (NSString*)getPlayer: (int) player inTeam: (NSArray*) team {
    
    NSString *name = [[NSString alloc] init];
    name = team[player];
    return name;
}

- (BOOL) checkPlayer: (NSString*) name In: (NSMutableArray *) team {
    return [team containsObject:name];
}
@end
