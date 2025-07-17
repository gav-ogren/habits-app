import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //
            Color.gray.opacity(0.15).ignoresSafeArea()

            VStack(spacing: 0) {
                // Top Bar
                HStack {
                    Spacer()

                    Button(action: { print("User button tapped") }) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .foregroundColor(.blue)
                    }
                    .buttonStyle(PlainButtonStyle())

                    Spacer()
                    Spacer()

                    Text("myTargets")
                        .font(.headline)

                    Spacer()
                    Spacer()

                    Button(action: { print("Menu button tapped") }) {
                        Image(systemName: "line.3.horizontal.decrease.circle.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.orange)
                    }

                    Spacer()
                }
                .padding(.top, 16)

                // Scrollable Main Content
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack{
                            Text("Goals")
                            Spacer()
                            Text("See More") // Proabably edit in the future to make it a link
                        }
                        // Drag-to-Adjust Bars
                        DraggableProgressBar(
                            title: "Walk",
                            icon: "figure.walk",
                            color: .blue,
                            maxValue: 10000
                        )
                        
                        DraggableProgressBar(
                            title: "Daily Bible Reading",
                            icon: "book",
                            color: .pink,
                            maxValue: 10
                        )
                    }
                    .padding()
                    .frame(maxWidth: 600)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 8)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 120) // Leave space for nav bar
                    .padding(.top, 20)
                }
            }

            // Bottom Nav Bar and Floating +
            VStack {
                Spacer()

                ZStack {
                    // Navigation Bar
                    HStack {
                        Spacer()
                        NavButton(icon: "clipboard", title: "Dashboard")
                        Spacer()
                        NavButton(icon: "calendar", title: "Schedule")
                        Spacer()
                            .frame(width: 64) // Empty space for the + button
                        Spacer()
                        NavButton(icon: "target", title: "Goals")
                        Spacer()
                        NavButton(icon: "gearshape", title: "Settings")
                        Spacer()
                    }
                    .padding(.vertical, 12)
                    .background(Color.cyan)
                    .cornerRadius(30)
                    .padding(.horizontal, 16)
                    .shadow(radius: 5)
                    .ignoresSafeArea(edges: .bottom)

                    // Floating "+" button
                    Button(action: {
                        print("Main + button tapped")
                    }) {
                        Image(systemName: "plus")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(.white)
                            .frame(width: 64, height: 64)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                    .offset(y: -32)
                    .zIndex(1)
                }
            }
        }
    }
}



#Preview {
    ContentView()
}
