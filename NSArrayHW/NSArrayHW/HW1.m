//
//  HW1.m
//  NSArrayHW
//
//  Created by Hoàng Tiến on 10/7/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "HW1.h"

@interface HW1 ()

@end

@implementation HW1

- (void)viewDidLoad {
    [super viewDidLoad];
    BOOL had;
    NSArray *barcelona  = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource: @"Barcelona" ofType:@"plist"]];
    NSMutableArray *team = [[NSMutableArray alloc] init];
    
    NSString *name = [[NSString alloc] init];
    int i=0;
    while (i<11)
    {
        name = [self getPlayer:barcelona];
        had = [self checkPlayer:name In:team];
        if (!had)
        {
            [team addObject:name];
            i++;
        }
    }
    for (NSDictionary* item in team) {
        NSLog(@"%@-%@-%@", item[@"no"],item[@"poisition"], item[@"name"]);
    }
}

- (NSString*)getPlayer: (NSArray *)team {
    int player;
    NSString *name = [[NSString alloc] init];
    if ([team count] > 0 ) {
        player = arc4random()%[team count];
        name = team[player];
    }
    return name;
}

- (BOOL) checkPlayer: (NSString *)name In: (NSMutableArray *)team {
    return [team containsObject:name];
}



@end
