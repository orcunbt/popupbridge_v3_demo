//
//  WebViewController.swift
//  PuBridgeiOS
//
//  Created by Orcun on 15/04/2025.
//

import UIKit
import PopupBridge
import WebKit

class WebViewController: UIViewController {
    // MARK: - Private Properties
    private let webView = WKWebView()
    private var popupBridge: POPPopupBridge?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints() // Set up our webView layout
        popupBridge = POPPopupBridge(webView: webView)
        if let url = URL(string: "https://braintree.github.io/popup-bridge-example/") {
            webView.load(URLRequest(url: url))
        }
    }
    
    // MARK: - Private Methods
    private func setupConstraints() {
        view.addSubview(webView)
        webView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

