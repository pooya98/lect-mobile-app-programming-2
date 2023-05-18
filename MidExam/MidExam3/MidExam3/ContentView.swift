//
//  ContentView.swift
//  MidExam3
//
//  Created by 강승우 on 2023/04/21.
//

import SwiftUI

struct ContentView: View {
  @State private var showingSheet = false
  @State private var showingPopover = false
  
  var body: some View {
      VStack{
          Text("2017112436 강승우").font(.largeTitle).foregroundColor(Color.blue)
          Spacer()
          Button(action: { self.showingSheet.toggle() }) {
            Text("Sheet").font(.largeTitle)
          }
          .popover(isPresented: $showingSheet,
                   attachmentAnchor: .rect(.bounds), // (1)
                   arrowEdge: .top, // (2)
                   content: sheetContents
          )
        Button(action: { self.showingPopover.toggle() }) {
          Text("Popover").font(.largeTitle)
        }
        .popover(isPresented: $showingPopover,
                 attachmentAnchor: .rect(.bounds), // (1)
                 arrowEdge: .top, // (2)
                 content: popoverContents
        )
          Spacer()
      }
  }
    
    func sheetContents() -> some View { // 팝오버에 표시될 컨텐츠
        let fruits = ["사과", "배", "포도", "바나나"]
        let drinks = ["물", "우유", "탄산수"]
        
        let titles = ["Fruits", "Drinks"]
        let data = [fruits, drinks]
        
        return VStack(alignment: .leading) {
                Button(action: {self.showingSheet = false}) { // 팝오버 제거
                    Text("Tap to Dismiss").font(.largeTitle)
                }
            List {
                ForEach(data.indices, id: \.self) { index in // data에 포함된 횟수만큼 섹션 생성
                    Section(header: Text(titles[index]).font(.title), // 헤더
                            footer: HStack{ Spacer(); Text("\(data[index].count)건")} // 푸터
                    ){// 콘텐츠
                        ForEach(data[index], id: \.self) {
                            Text($0) }
                    } // Section
                }
            }
        }
    }
  
  func popoverContents() -> some View { // 팝오버에 표시될 컨텐츠
    VStack(alignment: .leading) {
      HStack {
        Button(action: {self.showingPopover = false}) { // 팝오버 제거
          Text("Cancel").foregroundColor(.red)
        }
        Spacer()
        Text("New Event").font(.headline)
        Spacer()
        Button("Add(+)") { }
      }
      Divider().padding(.bottom, 8) // 구분선 추가
      
      Text("Title")
      TextField("제목", text: .constant(""))
      Text("Contents")
      TextField("내용", text: .constant(""))
      Spacer()
    }
    .padding()
  }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
