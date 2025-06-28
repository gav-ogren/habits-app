//
//  ContentView.swift
//  habits-app
//
//  Created by Gavin  Ogren on 6/26/25.
//

import SwiftUI

struct ContentView: View {
    enum Field {
        case username
        case password
    }

    @FocusState private var focusedField: Field?
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        Form {
            TextField("Username", text: $username)
                .focused($focusedField, equals: .username)
                .submitLabel(.next)

            SecureField("Password", text: $password)
                .focused($focusedField, equals: .password)
                .submitLabel(.done)
        }
        .onSubmit {
            switch focusedField {
            case .username:
                focusedField = .password
            default:
                focusedField = nil
            }
        }
    }
}


#Preview {
    ContentView()
}
