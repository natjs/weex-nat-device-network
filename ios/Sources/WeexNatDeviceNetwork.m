//
//  WeexNatDeviceNetwork.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//


#import "WeexNatDeviceNetwork.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <NatDeviceNetwork/NatDeviceNetwork.h>

@implementation WeexNatDeviceNetwork
@synthesize weexInstance;

WX_PlUGIN_EXPORT_MODULE(nat/device/network, WeexNatDeviceNetwork)
WX_EXPORT_METHOD(@selector(status:))

- (void)status:(WXModuleCallback)callback{
    [[NatDeviceNetwork singletonManger] status:^(id error, id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

@end
