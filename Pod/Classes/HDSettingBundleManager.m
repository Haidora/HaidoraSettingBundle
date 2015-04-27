//
//  HDSettingBundleManager.m
//  Pods
//
//  Created by Dailingchi on 15/4/27.
//
//

#import "HDSettingBundleManager.h"

#define kHDSettingBundleManager_HOST @"kHDSettingBundleManager_HOST"
#define kHDSettingBundleManager_PORT @"kHDSettingBundleManager_PORT"
#define kHDSettingBundleManager_isConfig @"kHDSettingBundleManager_isConfig"

@implementation HDSettingBundleManager

+ (void)configureServerWith:(NSString **)defaultHost port:(NSString **)defaultPort
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    BOOL isConfig = [[userDefaults objectForKey:kHDSettingBundleManager_isConfig] boolValue];
    if (!isConfig)
    {
        [userDefaults setObject:@(YES) forKey:kHDSettingBundleManager_isConfig];
        [userDefaults setObject:*defaultHost forKey:kHDSettingBundleManager_HOST];
        [userDefaults setObject:*defaultPort forKey:kHDSettingBundleManager_PORT];
        [userDefaults synchronize];
    }
    else
    {
        // read config
        *defaultHost = [userDefaults objectForKey:kHDSettingBundleManager_HOST];
        *defaultPort = [userDefaults objectForKey:kHDSettingBundleManager_PORT];
    }
}

@end
