//
//  HW2.m
//  NSArrayHW
//
//  Created by Hoàng Tiến on 10/7/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "HW2.h"
#import "HW2+ArrayBack.h"



@interface HW2 ()

@end

@implementation HW2

- (void)viewDidLoad {
        NSArray *inputArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource: @"HW2" ofType:@"plist"]];
        NSArray *outputArray = [[NSArray alloc] init];
        outputArray = [inputArray getArray:inputArray];
        
    for (NSDictionary* item in outputArray) {
        NSLog(@"%@-%@-%@", item[@"no"],item[@"poisition"], item[@"name"]);
    }
}


@end
