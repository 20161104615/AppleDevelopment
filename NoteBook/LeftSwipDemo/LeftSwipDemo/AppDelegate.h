//
//  AppDelegate.h
//  LeftSwipDemo
//
//  Created by tianlei on 16/11/4.
//  Copyright © 2016年 tianlei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "TLWindow.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) TLWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

