//
//  MenuModel.swift
//  AchibanSushi
//
//  Created by Ari Supriatna on 08/05/21.
//

import Foundation

struct Menu: Identifiable {
    let id = UUID().uuidString
    let name: String
    let image: String
    let price: Int
}

let listMenu = [
    ("Menu 1", "menu_1", 17000),
    ("Menu 2", "menu_2", 18000),
    ("Menu 3", "menu_3", 27000),
    ("Menu 4", "menu_4", 37000),
    ("Menu 5", "menu_5", 47000),
    ("Menu 6", "menu_6", 27000),
    ("Menu 7", "menu_7", 57000),
    ("Menu 8", "menu_8", 57000),
    ("Menu 9", "menu_9", 97000),
    ("Menu 10", "menu_10", 37000),
    ("Menu 11", "menu_11", 57000),
    ("Menu 12", "menu_12", 87000)
].map(Menu.init)
