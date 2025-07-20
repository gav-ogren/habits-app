import SwiftUI

struct CircularProgressView: View {
    var progress: CGFloat // 0.0 to 1.0
    var color: Color

    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.4), lineWidth: 12)

            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(color, style: StrokeStyle(lineWidth: 12, lineCap: .round))
                .rotationEffect(.degrees(-90))

            Text("\(Int(progress * 100))%")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.black)
        }
        .frame(width: 90, height: 90)
    }
}

struct RoutinesSection: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Routines")
                    .font(.title2)
                    .bold()

                Spacer()

                Text("See More")
                    .foregroundColor(.blue)
                    .font(.subheadline)
            }
            .padding(.horizontal)

            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.systemGray6))
                .overlay(
                    HStack(spacing: 30) {
                        VStack {
                            Text("Morning")
                                .foregroundColor(.yellow)
                                .font(.headline)
                                .bold()
                            CircularProgressView(progress: 0.7, color: .yellow)
                        }

                        VStack {
                            Text("Evening")
                                .foregroundColor(.blue)
                                .font(.headline)
                                .bold()
                            CircularProgressView(progress: 0.4, color: .blue)
                        }

                        VStack {
                            Text("Shower")
                                .foregroundColor(.pink)
                                .font(.headline)
                                .bold()
                            CircularProgressView(progress: 0.9, color: .pink)
                        }
                    }
                    .padding()
                )
                .padding(.horizontal)
        }
        .padding(.top)
    }
}
// delete this later
#Preview {
    ContentView()
}
