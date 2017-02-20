package com.nat.weex;

import com.nat.device_network.HLModuleResultListener;
import com.nat.device_network.NetworkModule;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;

/**
 * Created by Daniel on 17/2/17.
 * Copyright (c) 2017 Nat. All rights reserved.
 */

public class DeviceNetworkModule extends WXModule{

    @JSMethod
    public void status(final JSCallback jsCallback){
        NetworkModule.getInstance(mWXSDKInstance.getContext()).status(new HLModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }
}
