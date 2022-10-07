//
//  ViewController.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import UIKit

class ViewController: UIViewController {

    private let placeService = PlaceService()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint

        placeService.loadPlaces { places in
            print(places)
        }
    }


}

