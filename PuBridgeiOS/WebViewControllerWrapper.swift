//
//  WebViewControllerWrapper.swift
//  PuBridgeiOS
//
//  Created by Orcun on 15/04/2025.
//

import SwiftUI

struct WebViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> WebViewController {
        return WebViewController() // Instantiate your view controller
    }
    
    func updateUIViewController(_ uiViewController: WebViewController, context: Context) {
        // Implement any required updates. For now, leave it empty.
    }
}
