//
//  ListenNotificationCenterDelegate.h
//
//  Created by wujungao on 11/10/15.
//

#import <Foundation/Foundation.h>

@protocol ListenNotificationCenterDelegate <NSObject>

@optional

-(void)deviceOrientaionChangedWithNotification:(NSNotification *)notification;
//
-(void)customNotificationWithNotification:(NSNotification *)notification;

@end
