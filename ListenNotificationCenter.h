//
//  ListenNotificationCenter.h
//
//  Created by wujungao on 11/10/15.
//

#import <Foundation/Foundation.h>
#import "ListenNotificationCenterDelegate.h"

@interface ListenNotificationCenter : NSObject

@property(nonatomic,assign)id <ListenNotificationCenterDelegate> listenNotificationCenterDelegate;

-(void)listeningDeviceOrientationDidChange;
-(void)listeningCustomNotificationWithNotificationName:(NSString *)notificationName;
//
-(void)closeListeningDeviceOrientationDidChange;
-(void)closeListeningCustomNotificationWithNotificationName:(NSString *)notificationName;

@end
