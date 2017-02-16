//
//  NatWeexDeviceNetwork.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//


#import "NatWeexDeviceNetwork.h"
#import "NatDeviceNetwork.h"

@implementation NatWeexDeviceNetwork
WX_EXPORT_METHOD(@selector(status:))

- (void)status:(WXModuleCallback)callback{
    [[NatDeviceNetwork singletonManger] status:^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        }else{
            if (callback) {
                callback(result);
            }
        }
    }];

}

@end
