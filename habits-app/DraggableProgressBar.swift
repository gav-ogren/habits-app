//
//  DraggableProgressBar.swift
//  habits-app
//
//  Created by Gavin  Ogren on 7/16/25.
//

import SwiftUI

struct DraggableProgressBar: View {
    let title: String
    let icon: String
    let color: Color
    let maxValue: CGFloat

    @State private var currentValue: CGFloat = 0

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Label(title, systemImage: icon)
                    .foregroundColor(.white)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(color)
                    .cornerRadius(12)

                Spacer()

                Text("\(Int(currentValue))/\(Int(maxValue))")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 20)

                    RoundedRectangle(cornerRadius: 12)
                        .fill(color)
                        .frame(width: max(0, min(currentValue / maxValue * geo.size.width, geo.size.width)), height: 20)
                }
                .gesture(
                    DragGesture(minimumDistance: 0)
                        .onChanged { value in
                            let relativeX = max(0, min(value.location.x, geo.size.width))
                            currentValue = (relativeX / geo.size.width) * maxValue
                        }
                )
            }
            .frame(height: 20)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}
