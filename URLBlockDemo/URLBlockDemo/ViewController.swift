//
//  ViewController.swift
//  URLBlockDemo
//
//  Created by 林楠 on 2018/10/8.
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
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(buttonDidClicked), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc private func buttonDidClicked() {
        let myViewController = MyViewController()
        navigationController?.pushViewController(myViewController, animated: true)
    }
}

