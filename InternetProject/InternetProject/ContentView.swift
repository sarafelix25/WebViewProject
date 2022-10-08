//
//  ContentView.swift
//  InternetProject
//
//  Created by Sara Batista dos Santos Felix on 10/8/22.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    private let urlString: String = "https://proap.ufabc.edu.br/nutricao-e-restaurantes-universitarios/cardapio-semanal"


    var body: some View {
        VStack(spacing: 40) {
            WebView(url: URL(string: urlString)!).frame(height: 500.0)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 20.0, x: 5, y: 5)
        }
    }
}

struct WebView: UIViewRepresentable {
    var url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
