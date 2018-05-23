//
//  Car.m
//  LearnAboutCompound
//
//  Created by 黄洪彬 on 2018/5/23.
//  Copyright © 2018年 黄洪彬. All rights reserved.
//

#import "Car.h"

@implementation Car

/*- (id)init
{
    self = [super init];
    if (self) {
        engine = [Engine new];
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    return self;
}*/

@synthesize engine = _engine;
- (void) print
{
    NSLog(@"%@", _engine);
    for (int i = 0; i < 4; i++) {
        NSLog(@"%@", tires[i]);
    }
}

-(void) setEngine:(Engine *)engine
{
    _engine = engine;
}

-(Engine*) engine
{
    return _engine;
}
-(void) setTire:(Tire *)tire
        atIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex", index);
        exit(1);
    }
    
    tires[index] = tire;
}

-(Tire *) tireAtIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in tireAtIndex", index);
        exit(1);
    }
    return (tires[index]);
}
@end
