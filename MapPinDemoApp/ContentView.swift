import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.3349, longitude: -122.00902),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    @State private var annotations: [MKPointAnnotation] = []

    var body: some View {
        VStack {
            Map(coordinateRegion: $region, annotationItems: annotations) { annotation in
                MapPin(coordinate: annotation.coordinate, tint: .red)
            }
            .gesture(TapGesture().onEnded {
                let newPin = MKPointAnnotation()
                newPin.coordinate = region.center
                annotations.append(newPin)
            })
            .frame(height: 400)

            Text("Pins dropped: \(annotations.count)")
        }
        .padding()
    }
}
