import SwiftUI

struct Region: Identifiable {
    let id: Int
    var isSelected = false
}

struct SaudiArabiaMapView: View {
    @State private var regions = [Region(id: 1), Region(id: 2), Region(id: 3)]
    
    var body: some View {
        ZStack {
            // Replace this Rectangle with your SVG path
            Rectangle()
                .fill(Color.gray)
                .onTapGesture {
                    regions.indices.forEach { index in
                        regions[index].isSelected = (index == 0)
                    }
                }
                .frame(width: 200, height: 200)
                .position(x: 150, y: 150)
                .opacity(regions[0].isSelected ? 0.5 : 1.0)

            // Add more rectangles or SVG paths for other regions
            Rectangle()
                .fill(Color.green)
                .onTapGesture {
                    regions.indices.forEach { index in
                        regions[index].isSelected = (index == 1)
                    }
                }
                .frame(width: 100, height: 100)
                .position(x: 50, y: 50)
                .opacity(regions[1].isSelected ? 0.5 : 1.0)

            Rectangle()
                .fill(Color.blue)
                .onTapGesture {
                    regions.indices.forEach { index in
                        regions[index].isSelected = (index == 2)
                    }
                }
                .frame(width: 100, height: 100)
                .position(x: 250, y: 250)
                .opacity(regions[2].isSelected ? 0.5 : 1.0)
        }
    }
}

struct ContentView: View {
    var body: some View {
        SaudiArabiaMapView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
