//
//  FirstScreen.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import UIKit

class FirstScreen: UIViewController {

    private lazy var button: UIButton = {
        let b = UIButton()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitle("Next".uppercased(), for: .normal)
        b.addTarget(self, action: #selector(presentNextVC), for: .touchUpInside)
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal

        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    @objc func presentNextVC() {
        show(ViewController(), sender: nil)
    }
}
