//
//  JYMediator.swift
//  RuntimeDemo
//
//  Created by 林楠 on 2018/9/30.
//

import Foundation

enum JYMediatorConstantsKey {
    static let targetMyCenter = "MyCenter"
    static let actionNativeFetchMyViewController = "NativeFetchMyViewController"
}
class JYMediator {

    /// 单例
    static let shared = JYMediator()

    /// hash表
    private var cachedClass: [String: Any] = [:]

    /// 防止外部调用init
    private init() {
    }

    /// 远程调用
    func performUrlAction() {
    }

    /// 本地调用
    func performTargetAction(targetName: String, actionName: String, parameters: [String: Any]) -> Any? {
        let targetClassString = "Target_" + targetName
        var target: NSObject?
        if let cacheTarget = cachedClass[targetClassString] as? NSObject {
            target = cacheTarget
        } else if let appName = Bundle.main.infoDictionary?["CFBundleName"] as? String {
            let className = "\(appName).\(targetClassString)"
            if let targetClass = NSClassFromString(className) as? NSObject.Type {
                target = targetClass.init()
                cachedClass[targetClassString] = target
            } else {
                /// 异常处理
                return nil
            }
        } else {
            /// 异常处理
            return nil
        }
        let actionString = "action_" + actionName
        let action = Selector(actionString)
        if let target = target, target.responds(to: action) {
            return target.perform(action, with: parameters)?.takeUnretainedValue()
        } else {
            /// 异常处理
            return nil
        }
    }
}
