import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "swift")
                .font(.system(size: 64))
                .foregroundColor(.orange)

            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Welcome to your iOS Starter App")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
