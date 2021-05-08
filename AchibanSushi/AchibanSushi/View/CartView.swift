//
//  CartView.swift
//  AchibanSushi
//
//  Created by Ari Supriatna on 08/05/21.
//

import SwiftUI

struct CartView: View {
  
  var body: some View {
    ScrollView {
      VStack {
        ForEach(listMenu.prefix(5)) { item in
          VStack {
            HStack {
              Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
              
              VStack(alignment: .leading, spacing: 8) {
                Text(item.name).font(.headline)
                Text("Rp \(item.price)").font(.subheadline)
              }
              
              Spacer()
              
              HStack(alignment: .center, spacing: 16) {
                Button {
                  print("Tap Minus -")
                } label: {
                  Image(systemName: "minus")
                    .foregroundColor(.green)
                    .frame(width: 30, height: 30)
                    .overlay(
                      Circle().stroke(Color.green, lineWidth: 1)
                    )
                }
                
                Text("1")
                  .font(.title3)
                  .bold()
                
                Button {
                  print("Tap Plus +")
                } label: {
                  Image(systemName: "plus")
                    .foregroundColor(.green)
                    .frame(width: 30, height: 30)
                    .overlay(
                      Circle().stroke(Color.green, lineWidth: 1)
                    )
                }
              }
            }
            
            Divider()
          }
        }
        
        Button {
          print("Checkout order")
        } label: {
          Label("Checkout Order", systemImage: "cart")
            .font(.system(size: 16, weight: .semibold, design: .rounded))
        }
        .foregroundColor(.white)
        .frame(width: UIScreen.main.bounds.width / 2, height: 50)
        .background(Color.green)
        .clipShape(Capsule())
        .padding(.top, 24)
      }
      .padding(.all)
    }
    .navigationTitle(Text("Cart"))
  }
}

struct CartView_Previews: PreviewProvider {
  static var previews: some View {
    CartView()
  }
}
