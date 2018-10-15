//
//  ViewController.swift
//  ProtocolDemo
//
//  Created by 林楠 on 2018/10/15.
//  Copyright © 2018年 林楠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "首页"
        view.backgroundColor = .lightGray
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 300, width: 100, height: 100)
        button.setTitle("正常跳", for: .normal)
        button.addTarget(self, action: #selector(buttonDidClicked), for: .touchUpInside)
        view.addSubview(button)
        let anotherButton = UIButton()
        anotherButton.frame = CGRect(x: 150, y: 500, width: 100, height: 100)
        anotherButton.setTitle("组件跳", for: .normal)
        anotherButton.addTarget(self, action: #selector(anotherButtonDidClicked), for: .touchUpInside)
        view.addSubview(anotherButton)
    }

    @objc private func buttonDidClicked() {
        let myViewController = MyViewController()
        navigationController?.pushViewController(myViewController, animated: true)
    }

    @objc private func anotherButtonDidClicked() {
        if let myCenterComponent = JYProtocolCache.shared.objectFromProtocol(protocols: MyCenterComponentProtocol.self) as? MyCenterComponent {
            let myViewController = myCenterComponent.myViewController()
            navigationController?.pushViewController(myViewController, animated: true)
        }
    }
}

