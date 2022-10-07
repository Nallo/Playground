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
    }

}

protocol IPlaceWithMissedCalls {
    var getMissedCalls: (() -> Void)? { get set }
}
