//
//  Place2Voice.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

struct Place2Voice: IPlace, IPlaceWithMissedCalls {
    let model: String
    var getMissedCalls: ((IMissedCallsService.Completion) -> Void)?
}
