//
//  ViewController.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import UIKit

class ViewController: UIViewController {

    private let placeService = PlaceService()
    private var places = [IPlace]()

    private lazy var button: UIButton = {
        let b = UIButton()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitle("Get Missed Calls".uppercased(), for: .normal)
        b.addTarget(self, action: #selector(requestMissedCalls), for: .touchUpInside)
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemMint

        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

        placeService.loadPlaces { places in
            self.places = places
        }
    }

    @objc func requestMissedCalls() {
        places.compactMap({ $0 as? IPlaceWithMissedCalls }).forEach { place in
            print("Requesting missedCalls for \(place)")
            place.getMissedCalls? { missedCalls in
                print("Requesting missedCalls for \(place) done with \(missedCalls)")
            }
        }
    }
}

