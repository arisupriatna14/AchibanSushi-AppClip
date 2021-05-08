//
//  ContentView.swift
//  AchibanSushi
//
//  Created by Ari Supriatna on 08/05/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      NavigationView {
        MenuView()
      }
      .tabItem {
        Label("Menu", systemImage: "list.bullet.rectangle")
      }
      
      NavigationView {
        FavoriteView()
      }
      .tabItem {
        Label("Favorite", systemImage: "heart")
      }
      
      NavigationView {
        CartView()
      }
      .tabItem {
        Label("Cart", systemImage: "cart.badge.plus")
      }
      
      NavigationView {
        AccountView()
      }
      .tabItem {
        Label("Account", systemImage: "person.crop.circle")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
