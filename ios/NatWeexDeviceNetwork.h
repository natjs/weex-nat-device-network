//
//  NatWeexDeviceNetwork.h
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>


@protocol NatWeexDeviceNetworkPro <WXModuleProtocol>

- (void)status:(WXModuleCallback)callback;
@end

@interface NatWeexDeviceNetwork : NSObject<NatWeexDeviceNetworkPro>

@end
