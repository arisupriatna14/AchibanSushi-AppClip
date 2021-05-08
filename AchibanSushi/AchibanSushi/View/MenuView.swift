//
//  MenuView.swift
//  AchibanSushi
//
//  Created by Ari Supriatna on 08/05/21.
//

import SwiftUI

struct MenuView: View {
  
  let columns: [GridItem] = [
    .init(.flexible(minimum: 180)),
    .init(.flexible(minimum: 180))
  ]
  
  var body: some View {
    ScrollView {
      LazyVStack {
        LazyVGrid(columns: columns, spacing: 16) {
          ForEach(listMenu) {
            MenuItemView(menu: $0)
          }
        }
      }
      .padding(16)
    }
    .navigationTitle(Text("Menu"))
  }
}

struct MenuView_Previews: PreviewProvider {
  static var previews: some View {
    MenuView()
  }
}

struct MenuItemView: View {
  
  var menu: Menu
  
  var body: some View {
    VStack(spacing: 16) {
      Image(menu.image)
        .resizable()
        .scaledToFit()
        .frame(width: 170)
      
      Text(menu.name)
        .font(.headline)
      Text("Rp \(menu.price)")
      
      #if !APPCLIP
      Button {
        print("Add item")
      } label: {
        Text("Add Item")
          .font(.system(size: 16, weight: .semibold, design: .rounded))
          .foregroundColor(.green)
          .frame(width: 150, height: 35)
          .overlay(
            Capsule().stroke(Color.green, lineWidth: 1)
          )
      }
      #endif
    }
    .padding(.all)
    .frame(width: 180, height: 250)
    .background(Color.white)
    .mask(RoundedRectangle(cornerRadius: 20))
    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)
  }
}
