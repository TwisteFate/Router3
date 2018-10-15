//
//  MyCenterComponent.swift
//  ProtocolDemo
//
//  Created by 林楠 on 2018/10/15.
//  Copyright © 2018年 林楠. All rights reserved.
//

import UIKit

class MyCenterComponent {

    static func registerComponent() {
        JYProtocolCache.shared.registerProtocolsForObject(protocols: MyCenterComponentProtocol.self, object: MyCenterComponent())
    }
}

extension MyCenterComponent: MyCenterComponentProtocol {

    func myViewController() -> UIViewController {
        return MyViewController()
    }
}
