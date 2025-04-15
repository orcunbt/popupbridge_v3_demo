import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Your original SwiftUI components
            Text("Popup Bridge Demo")
                .padding()

            // Embed the web view controller
            WebViewControllerWrapper()
                .frame(height: 400) // Set a frame height as needed
        }
    }
}

#Preview {
    ContentView()
}
