//
//  Player.swift
//  RealmSample
//
//  Created by 近藤宏輝 on 2020/02/08.
//  Copyright © 2020 Hiroki. All rights reserved.
//

import Foundation
import RealmSwift

class Player: Object {
    //選手名
    @objc dynamic var name: String   = ""
    //身長(単位: m)
    @objc dynamic var height: Double = 0.0
    //体重(単位: kg)
    @objc dynamic var weight: Double = 0.0
    //メモ
    @objc dynamic var  memo: String  = ""
}
