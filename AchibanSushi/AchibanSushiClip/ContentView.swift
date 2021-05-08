//
//  ContentView.swift
//  AchibanSushiClip
//
//  Created by Ari Supriatna on 08/05/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      MenuView()
        .navigationTitle(Text("Menu"))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
