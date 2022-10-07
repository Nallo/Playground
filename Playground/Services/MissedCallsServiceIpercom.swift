//
//  MissedCallsServiceIpercom.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

final class MissedCallsServiceIpercom: IMissedCallsService {

    func load(for place: IPlace, completion: ([MissedCall]) -> Void) {
        print("loading for \(place.model) - Ipercom")

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            print("loading for \(place.model) - Ipercom done")
        }
    }

}
