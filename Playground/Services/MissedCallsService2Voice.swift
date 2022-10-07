//
//  MissedCallsService2Voice.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

final class MissedCallsService2Voice: IMissedCallsService {

    func load(for place: IPlace, completion: Completion) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            completion?([MissedCall(date: "2voice")])
        }
    }

}
