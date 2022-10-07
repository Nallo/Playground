//
//  PlaceIpercom.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

struct PlaceIpercom: IPlace, IPlaceWithMissedCalls {
    let model: String
    var getMissedCalls: ((IMissedCallsService.Completion) -> Void)?
}
