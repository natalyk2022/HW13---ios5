//
//  SettingsModel.swift
//  HW13 - ios5
//
//  Created by  Nataly on 31.07.22.
//

import Foundation
class SettingsModel {
    func createModel() -> [[Settings]] {
        return [
            [
                Settings(imageName: "airplane", title: "Авиарежим", type: .switchType),
                Settings(imageName: "wifi", title: "Wi-Fi", type: .disclosureType),
                Settings(imageName: "key", title: "Bluetooth", type: .disclosureType),
                Settings(imageName: "antenna.radiowaves.left.and.right", title: "Сотовая связь", type: .disclosureType),
                Settings(imageName: "personalhotspot", title: "Режим модема", type: .disclosureType),
                Settings(imageName: "v.square", title: "VPN", type: .switchType)
            ],
            [
                Settings(imageName: "note", title: "Уведомления", type: .disclosureType),
                Settings(imageName: "speaker.wave.3", title: "Звуки, тактильные сигналы", type: .disclosureType),
                Settings(imageName: "moon", title: "Не беспокоить", type: .disclosureType),
                Settings(imageName: "antenna.radiowaves.left.and.right", title: "Сотовая связь", type: .disclosureType),
                Settings(imageName: "hourglass", title: "Экранное время", type: .disclosureType)
            ],
            [
                Settings(imageName: "gear", title: "Основные", type: .disclosureType),
                Settings(imageName: "switch.2", title: "Пункт управления", type: .disclosureType),
                Settings(imageName: "textformat.size", title: "Экран и яркость", type: .disclosureType)
            ]
        ]
    }
}

