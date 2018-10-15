//
//  MyCenterModule.swift
//  RuntimeDemo
//
//  Created by 林楠 on 2018/10/13.
//

import UIKit

extension JYMediator {

    /// 分类forModule
    func jyMediatorForMyViewController() -> UIViewController {
        if let myViewController = self.performTargetAction(targetName: JYMediatorConstantsKey.targetMyCenter, actionName: JYMediatorConstantsKey.actionNativeFetchMyViewController, parameters: ["key": "value"]) as? UIViewController {
            return myViewController
        } else {
            return UIViewController()
        }
    }
}
