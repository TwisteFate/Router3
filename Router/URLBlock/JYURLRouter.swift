//
//  JYURLRouter.swift
//  URLBlockDemo
//
//  Created by 林楠 on 2018/10/12.
//  Copyright © 2018年 林楠. All rights reserved.
//

import Foundation

class JYURLRouter {
    /// 单例
    static let shared = JYURLRouter()

    /// hash表
    private var cachedClass: [String: Any] = [:]

    /// 防止外部调用init
    private init() {
    }

    /// 注册closure
    func registerURLWithClosure(url: String, closure: @escaping (_ json: String) -> Void) {
        cachedClass[url] = closure
    }

    /// 打开url
    func openURL(url: String) {
        let urlArray = url.components(separatedBy: "?")
        if urlArray.count > 1 {
            if let closure = cachedClass[urlArray[0]] as? ((_ json: String) -> Void) {
                closure(urlArray[1])
            }
        } else if let first = urlArray.first {
            if let closure = cachedClass[first] as? ((_ json: String) -> Void) {
                closure("")
            }
        } else {
            /// 异常处理
        }
    }
}
