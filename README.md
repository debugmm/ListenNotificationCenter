#ListenNotificationCenter
1. ListenNotificationCenter combine delegate and NSNotificationCenter, it Provide an APP internal centralized inform management center.
2. centralized Inform management and debug can be simplified.

#How To Get Started
1. add ListenNotificationCenter.h,ListenNotificationCenter.m and ListenNotificationCenterDelegate.h files to project.
2. set ListenNotificationCenter delegate to your obj.
3. invoke listeningXXX, when release delegate,do not forget invoking closeListeningXXX.
