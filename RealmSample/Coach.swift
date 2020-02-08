//
//  Coach.swift
//  RealmSample
//
//  Created by 近藤宏輝 on 2020/02/08.
//  Copyright © 2020 Hiroki. All rights reserved.
//

import Foundation
import RealmSwift

class Coach: Object {
    //コーチ名
    @objc dynamic var name: String = ""
    //コーチ歴(単位: 年)
    @objc dynamic var year: Int    = 1
}
