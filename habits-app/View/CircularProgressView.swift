import SwiftUI

struct CircularProgressView: View {
    var progress: CGFloat // 0.0 to 1.0
    var color: Color

    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.3), lineWidth: 12)

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
// delete this later
#Preview {
    ContentView()
}
