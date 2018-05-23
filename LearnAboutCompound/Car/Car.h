//
//  Car.h
//  LearnAboutCompound
//
//  Created by 黄洪彬 on 2018/5/23.
//  Copyright © 2018年 黄洪彬. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"
@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
@property (nonatomic, assign) Engine *engine;

-(void) setTire: (Tire *) tire
        atIndex: (int) index;

-(void) print;

-(Tire *) tireAtIndex: (int) index;
@end
