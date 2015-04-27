//
//  HDSettingBundleManager.h
//  Pods
//
//  Created by Dailingchi on 15/4/27.
//
//

#import <Foundation/Foundation.h>

@interface HDSettingBundleManager : NSObject

/**
 *  设置默认的HOST和PORT
 *
 *  @param defaultHost
 *  @param defaultPort
 */
+ (void)configureServerWith:(NSString **)defaultHost port:(NSString **)defaultPort;

@end
