//
//  ListenNotificationCenter.m
//
//  Created by wujungao on 11/10/15.
//

#import "ListenNotificationCenter.h"

@implementation ListenNotificationCenter

/*
    we can add new methods and delegate optional method for new demand：
    1. add new listen method,listen method format: listeningXXX;
    2. add new close method:,close method format: closeListeningXXX；
    3. add new handle method,handle method format: handleXXX;
    4. add new delegate optional method,optional method format: customNotificationWithNotificationXXX;
 */

//listen method
-(void)listeningDeviceOrientationDidChange{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleDeviceOrientationDidChange:) name:UIDeviceOrientationDidChangeNotification object:nil];
    
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
}

-(void)listeningCustomNotificationWithNotificationName:(NSString *)notificationName{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleCustomNotification:) name:notificationName object:nil];
}

//close lisen method
-(void)closeListeningDeviceOrientationDidChange{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIDeviceOrientationDidChangeNotification object:nil];
    [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
}

-(void)closeListeningCustomNotificationWithNotificationName:(NSString *)notificationName{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:notificationName object:nil];
}

//observed notification and perform method
-(void)handleDeviceOrientationDidChange:(NSNotification *)notification{
    
    if([self.listenNotificationCenterDelegate respondsToSelector:@selector(deviceOrientaionChangedWithNotification:)]){
        
        [self.listenNotificationCenterDelegate deviceOrientaionChangedWithNotification:notification];
    }
}

-(void)handleCustomNotification:(NSNotification *)notification{
    
    if([self.listenNotificationCenterDelegate respondsToSelector:@selector(customNotificationWithNotification:)]){
        
        [self.listenNotificationCenterDelegate customNotificationWithNotification:notification];
    }
}

@end
