//
//  Preview.swift
//  MyFruitMart
//
//  Created by 강승우 on 2023/04/07.
//

import SwiftUI

struct Preview<V: View>: View {
    enum Device: String, CaseIterable { // 프리뷰에서 활용할 기기 목록 정의
        case iPhoneSE = "iPhone SE (3rd generation)"
        case iPhone14 = "iPhone 14"
        case iPhone14Plus = "iPhone 14 Plus"
        case iPhone14ProMax = "iPhone 14 Pro Max"
    }
    
    let source: V // 프리뷰에서 표현될 뷰
    var devices: [Device] = [.iPhoneSE, .iPhone14, .iPhone14Plus] // (1)
    var displayDarkMode: Bool = true // 다크 모드 출력 여부 결정
    
    var body: some View {
        Group {
            ForEach(devices, id: \.self) { // 지정한 기기 목록 수만큼 반복
                self.previewSource(device: $0)
            }
            if !devices.isEmpty && displayDarkMode {// 다크 모드의 화면 확인을 위해 추가
                self.previewSource(device: devices[0])
                    .preferredColorScheme(.dark) // 컬러 스킴 지정
            }
            
        }
    }
    
    private func previewSource(device: Device) -> some View {
        source
            .previewDevice(PreviewDevice(rawValue: device.rawValue)) // 기기 형태
            .previewDisplayName(device.rawValue) // 프리뷰 컨테이너에 표시할 이름
    }
    
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview(source: Home(store: Store())) // 프리뷰에서 표현할 뷰를 전달
    }
}
