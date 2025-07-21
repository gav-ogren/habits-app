import SwiftUI

struct DashboardToDoView: View {
    let placeholderCount = 3

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            VStack(spacing: 12) {
                ForEach(0..<placeholderCount, id: \.self) { _ in
                    HStack(spacing: 12) {
                        Circle()
                            .fill(Color.gray.opacity(0.4))
                            .frame(width: 20, height: 20)

                        Text("Add a task...")
                            .foregroundColor(.gray)

                        Spacer()
                    }
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.05), radius: 1, x: 0, y: 1)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}
