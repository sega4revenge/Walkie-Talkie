//
//  CallVM.swift
//  Walkie-Talkie
//
//  Created by Zaporozhchenko Oleksandr on 4/25/20.
//  Copyright © 2020 maxatma. All rights reserved.
//

import ReactiveKit
import Bond
import WebRTC


final class CallVM: BondViewModel {
    var webRTCClient: WebRTCClient!
    var settingsVM: SettingsVM!
    var videoVM: VideoVM!
    var meVideoVM: PIPVideoVM!
    
    override init() {
        super.init()
        webRTCClient = WebRTCClient(iceServers: Config.shared.iceServers)
        settingsVM = SettingsVM(webRTCClient: webRTCClient)
        videoVM = VideoVM(webRTCClient: webRTCClient)
        meVideoVM = PIPVideoVM(webRTCClient: webRTCClient)
    }
}
