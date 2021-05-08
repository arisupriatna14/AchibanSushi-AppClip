//
//  FavoriteView.swift
//  AchibanSushi
//
//  Created by Ari Supriatna on 08/05/21.
//

import SwiftUI

struct FavoriteView: View {
  
  let columns: [GridItem] = [
    .init(.flexible(minimum: 180)),
    .init(.flexible(minimum: 180))
  ]
  
  var body: some View {
    ScrollView {
      LazyVStack {
        LazyVGrid(columns: columns, spacing: 16) {
          ForEach(listMenu.suffix(5)) {
            MenuItemView(menu: $0)
          }
        }
      }
      .padding()
    }
    .navigationTitle(Text("Favorite"))
  }
}

struct FavoriteView_Previews: PreviewProvider {
  static var previews: some View {
    FavoriteView()
  }
}
