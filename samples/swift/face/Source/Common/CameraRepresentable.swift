//
// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE.md file in the project root for full license information.
//

import AVFoundation
import SwiftUI

struct CameraRepresentable: UIViewControllerRepresentable {
    let onViewDidLoad: (UIView) -> Void
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func makeUIViewController(context: Context) -> CameraViewController {
        return CameraViewController()
            .onViewDidLoad(perform: onViewDidLoad)
    }
    
    func updateUIViewController(_ uiViewController: CameraViewController, context: Context) {}
    
    typealias UIViewControllerType = CameraViewController
}
