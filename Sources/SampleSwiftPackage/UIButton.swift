//
//  UIButton.swift
//  SampleSwiftPackage
//
//  Created by Ryan Token on 10/21/24.
//

import SwiftUI

public struct UIButton: View {
    var action: () -> ()

    public init(action: @escaping () -> Void) {
        self.action = action
    }

    public var body: some View {
        Button {
            action()
        } label: {
            Text("UIButton")
        }
    }
}

#Preview {
    UIButton(action: { print("UIButton") })
}
