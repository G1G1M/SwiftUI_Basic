//
//  ContentView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by KIM JIWON on 6/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HStack {
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.newjeans.kr")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("Newjeans")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundStyle(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.aespa.com")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("aespa")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.black)
                        .foregroundStyle(Color.white)
                        .cornerRadius(20)

                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://kissoflife-official.com")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("Kiss of Life")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(20)
                        .background(Color.pink)
                        .foregroundStyle(Color.white)
                        .cornerRadius(20)

                }
            }
        }
    }
}

#Preview {
    ContentView()
}
