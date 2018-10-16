//
//  JYProtocolCache.swift
//  ProtocolDemo
//
//  Created by 林楠 on 2018/10/15.
//  Copyright © 2018年 林楠. All rights reserved.
//

import Foundation

class JYProtocolCache {
    /// 单例
    static let shared = JYProtocolCache()

    /// hash表
    private var cachedClass: [String: Any] = [:]

    /// 防止外部调用init
    private init() {
    }

    /// 注册protocol
    func registerProtocolsForObject(protocols: Protocol, object: AnyClass) {
        let key = NSStringFromProtocol(protocols)
        cachedClass[key] = object
    }

    /// 获取object
    func objectFromProtocol(protocols: Protocol) -> AnyClass? {
        let key = NSStringFromProtocol(protocols)
        return cachedClass[key] as? AnyClass
    }
}
