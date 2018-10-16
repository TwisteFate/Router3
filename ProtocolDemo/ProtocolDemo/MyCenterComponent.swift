//
//  MyCenterComponent.swift
//  ProtocolDemo
//
//  Created by 林楠 on 2018/10/15.
//  Copyright © 2018年 林楠. All rights reserved.
//

import UIKit

class MyCenterComponent: NSObject {

    class func registerComponent() {
        JYProtocolCache.shared.registerProtocolsForObject(protocols: MyCenterComponentProtocol.self, object: self)
    }
}

extension NSObject: MyCenterComponentProtocol {

    func myViewController() -> UIViewController {
        return MyViewController()
    }
}
