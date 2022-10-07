//
//  JsonFactory.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

final class JsonFactory {

    private init() {}

    static func makeJson() -> Data {
        let json: [AnyHashable: Any] = [
            "places": [
                ["model": "My Ipercom", "type": "ipercom"],
                ["model": "My 2Voice", "type": "2voice"],
            ]
        ]

        return try! JSONSerialization.data(withJSONObject: json)
    }

}
