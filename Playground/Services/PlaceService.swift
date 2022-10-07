//
//  PlaceService.swift
//  Playground
//
//  Created by Stefano Martinallo on 07/10/22.
//

import Foundation

final class PlaceService {

    typealias Completion = ([IPlace]) -> Void

    private struct Response: Decodable {
        let places: [PlaceData]
    }

    private struct PlaceData: Decodable {
        let model: String
        let type: String
    }

    func loadPlaces(completion: @escaping Completion) {
        var places = [IPlace]()
        let data = JsonFactory.makeJson()
        let placeData = try! JSONDecoder().decode(Response.self, from: data)

        for place in placeData.places {
            if place.type == "ipercom" {
                places.append(PlaceIpercom(model: place.model))
            } else if place.type == "2voice" {
                var place = Place2Voice(model: place.model)
                place.getMissedCalls = {
                    let service = MissedCallsService2Voice()
                    service.load(for: place, completion: { _ in print("completed 2voice") })
                }
                places.append(place)
            }
        }

        completion(places)
    }

}
