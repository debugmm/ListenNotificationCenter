#ListenNotificationCenter
1. ListenNotificationCenter combine delegate and NSNotificationCenter, it Provide an APP internal centralized inform management center.
2. centralized Inform management and debug can be simplified.
3. ListenNotificationCenter can monitor any messages, but only trigger one proxy implementer. [just multi notification send to single obj.

#How To Get Started
1. add ListenNotificationCenter.h,ListenNotificationCenter.m and ListenNotificationCenterDelegate.h files to project.
2. set ListenNotificationCenter delegate to your obj.
3. invoke listeningXXX, when release delegate,do not forget invoking closeListeningXXX.
