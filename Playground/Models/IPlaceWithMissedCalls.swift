//
//  IPlaceWithMissedCalls.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

protocol IMissedCallsService {
    func load(for place: IPlace, completion: ([MissedCall]) -> Void)
}

final class MissedCallsService2Voice: IMissedCallsService {

    func load(for place: IPlace, completion: ([MissedCall]) -> Void) {
        print("loading for \(place.model) - 2Voice")

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            print("loading for \(place.model) - 2Voice done")
        }
    }

}

final class MissedCallsServiceIpercom: IMissedCallsService {

    func load(for place: IPlace, completion: ([MissedCall]) -> Void) {
        print("loading for \(place.model) - Ipercom")

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            print("loading for \(place.model) - Ipercom done")
        }
    }

}

protocol IPlaceWithMissedCalls {
    var getMissedCalls: ((([MissedCall]) -> Void) -> Void)? { get set }
}
