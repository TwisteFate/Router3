//
//  ViewController.swift
//  RuntimeDemo
//
//  Created by 林楠 on 2018/9/30.
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
        let myViewController = JYMediator.shared.jyMediatorForMyViewController()
        navigationController?.pushViewController(myViewController, animated: true)
    }
}

