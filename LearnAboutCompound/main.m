//
//  main.m
//  LearnAboutCompound
//
//  Created by 黄洪彬 on 2018/5/23.
//  Copyright © 2018年 黄洪彬. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Car.h"

int main(int argc, char * argv[]) {
    Car *car = [Car new];
    //装引擎
    Engine *engine = [Engine new];
    [car setEngine: engine];
    //装轮子
    for (int i = 0; i < 4; i++) {
        Tire *tire = [Tire new];
        [car setTire:tire atIndex:i];
        NSLog(@"Setting tire No.%d", i);
    }
    //看效果
    [car print];
    //看引擎
    NSLog(@"Getting engine...");
    NSLog(@"%@", [car engine]);
    //看轮子
    NSLog(@"Getting tires...");
    for (int i = 0; i < 4; i++) {
        NSLog(@"%@", [car tireAtIndex: i]);
    }
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
