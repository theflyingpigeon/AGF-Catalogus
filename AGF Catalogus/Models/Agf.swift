/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model for an individual landmark.
*/

import SwiftUI
import CoreLocation

struct AGF: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var soort: String
    var hsoort: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var category: Category

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    var harvest: String
    var bewaaradvies: String
    var Beschrijfing: String
    var Smaak: String

    enum Category: String, CaseIterable, Codable, Hashable {
        case Aardappels = "Aardappels"
        case Groente = "Groente"
        case Fruit = "Fruit"
    }
}

extension AGF {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
