//
//  MyWebView.swift
//  SwiftUI_Image_tutorial
//
//  Created by KIM JIWON on 6/27/25.
//

import SwiftUI
import WebKit

// UIkit의 UIView를 사용할 수 있도록 함
// UIViewControllerRepresentable

struct MyWebView: UIViewRepresentable {
    var urlToLoad: String
    
    
    // UIView 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // webview 인스턴스 생성
        let webview = WKWebView()
        
        // webview를 load
        webview.load(URLRequest(url: url))
        
        // webview를 반환
        return webview
    }
    
    // 업데이트 UIView 만들기
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
    }
}

#Preview{
    MyWebView(urlToLoad: "https://www.newjeans.kr")
}
