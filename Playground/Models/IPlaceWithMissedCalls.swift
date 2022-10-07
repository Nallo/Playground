//
//  IPlaceWithMissedCalls.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

protocol IPlaceWithMissedCalls {
    var getMissedCalls: ((IMissedCallsService.Completion) -> Void)? { get set }
}
