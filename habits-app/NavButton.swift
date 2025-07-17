import SwiftUI

struct NavButton: View {
    let icon: String
    let title: String

    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(.white)
            Text(title)
                .font(.caption2)
                .foregroundColor(.white.opacity(0.9))
        }
    }
}

struct NavButton_Previews: PreviewProvider {
    static var previews: some View {
        NavButton(icon: "house.fill", title: "Home")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
