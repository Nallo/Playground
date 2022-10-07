//
//  IMissedCallsService.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

protocol IMissedCallsService {
    typealias Completion = (([MissedCall]) -> Void)?

    func load(for place: IPlace, completion: Completion)
}
