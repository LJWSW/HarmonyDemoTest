@Entry
@Component
struct ListPage {
  @State flag: boolean = false

  build() {
    Column() {
      Stack({alignContent: Alignment.BottomEnd}){
        List({space: 10}){
          ForEach([1,3,4,5,6,7,8,9,23], (item, key) => {
            ListItem(){
              Text(`${item}`)
                .fontSize(34)
                .width('100%')
                .height(60)
                .borderRadius(10)
                .textAlign(TextAlign.Center)
                .backgroundColor('#eee')
            }
          })
        }
        .padding(10)
        .height('100%')

        RelativeContainer(){
          Button(){
            Text('+').fontColor(Color.White)
              .fontSize(36)
              .textAlign(TextAlign.Center)
          }.width(60)
          .height(60)
          .alignRules({
            bottom: {
              anchor: '__container__',
              align: VerticalAlign.Bottom
            },
            right: {
              anchor: '__container__',
              align: HorizontalAlign.End
            }
          })
          .id('bt1')
          .onClick(() => {
            this.flag = !this.flag
          })

          if (this.flag) {
            Button(){
              Text('A').fontColor(Color.White)
                .fontSize(36)
                .textAlign(TextAlign.Center)
            }.width(60)
            .height(60)
            .alignRules({
              bottom: {
                anchor: 'bt1',
                align: VerticalAlign.Top
              },
              right: {
                anchor: '__container__',
                align: HorizontalAlign.End
              }
            })
            .backgroundColor(Color.Orange)
            .offset({y:-30})
            .id('bt2')

            Button(){
              Text('B').fontColor(Color.White)
                .fontSize(36)
                .textAlign(TextAlign.Center)
            }.width(60)
            .height(60)
            .alignRules({
              bottom: {
                anchor: 'bt1',
                align: VerticalAlign.Top
              },
              right: {
                anchor: 'bt1',
                align: HorizontalAlign.Start
              }
            })
            .backgroundColor(Color.Grey)
            .offset({x:-10, y:-10})
            .id('bt3')

            Button(){
              Text('C').fontColor(Color.White)
                .fontSize(36)
                .textAlign(TextAlign.Center)
            }.width(60)
            .height(60)
            .alignRules({
              bottom: {
                anchor: 'bt1',
                align: VerticalAlign.Bottom
              },
              right: {
                anchor: 'bt1',
                align: HorizontalAlign.Start
              }
            })
            .backgroundColor(Color.Red)
            .offset({x:-30})
            .id('bt4')
          }

        }.width(160)
        .height(160)
        .offset({x:-10,y:-10})
      }
    }
    .width('100%')
    .height('100%')
  }
}