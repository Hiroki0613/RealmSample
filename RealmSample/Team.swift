//
//  Team.swift
//  RealmSample
//
//  Created by 近藤宏輝 on 2020/02/08.
//  Copyright © 2020 Hiroki. All rights reserved.
//

import Foundation
import RealmSwift

//チームモデル
//Objectを継承してクラスを作成
class Team: Object {
    //各プロパティは@objc dynamic var をつけて宣言
    //id
    @objc dynamic var id: Int           = 0
    //チーム名
    @objc dynamic var name : String     = ""
    //コーチ Coachモデルと1対1の関係
    @objc dynamic var coach: Coach?
    //選手 Playerモデルと1対Nの関係
    let players = List<Player>()
    //作成日時
    @objc dynamic var createdDate: Date = NSDate() as Date
    //更新日時
    @objc dynamic var updateDate: Date  = NSDate() as Date
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
    override class func indexedProperties() -> [String] {
        return ["name"]
    }
}
