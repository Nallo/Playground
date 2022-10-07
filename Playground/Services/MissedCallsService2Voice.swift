//
//  MissedCallsService2Voice.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

final class MissedCallsService2Voice: IMissedCallsService {

    func load(for place: IPlace, completion: ([MissedCall]) -> Void) {
        print("loading for \(place.model) - 2Voice")

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            print("loading for \(place.model) - 2Voice done")
            /* Uncomment the line below to get the error */
//            completion([])
        }
    }

}
