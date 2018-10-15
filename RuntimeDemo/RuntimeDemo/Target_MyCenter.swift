//
//  Target_MyCenter.swift
//  RuntimeDemo
//
//  Created by 林楠 on 2018/10/13.
//

import UIKit

class Target_MyCenter: NSObject {
    
    @objc func action_NativeFetchMyViewController() -> UIViewController {
        let myViewController = MyViewController()
        return myViewController
    }
}
