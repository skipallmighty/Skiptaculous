//
//  BlockStatus.swift
//  Skiptaculous
//
//  Created by Skip Wilson on 6/20/14.
//  Copyright (c) 2014 Skip Wilson. All rights reserved.
//

import Foundation

class BlockStatus {
    var isRunning = false
    var timeGapForNextRun = UInt32(0)
    var currentInterval = UInt32(0)
    init(isRunning:Bool, timeGapForNextRun:UInt32, currentInterval:UInt32) {
        self.isRunning = isRunning
        self.timeGapForNextRun = timeGapForNextRun
        self.currentInterval = currentInterval
    }
    
    func shouldRunBlock() -> Bool {
        return self.currentInterval > self.timeGapForNextRun
    }
}