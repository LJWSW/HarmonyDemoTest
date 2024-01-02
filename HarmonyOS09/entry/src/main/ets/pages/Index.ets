@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      RelativeContainer(){
        Text('1')
          .width(100)
          .height(100)
          .fontSize(30)
          .backgroundColor(Color.Blue)
          .alignRules({
            // right: {
            //   anchor: '__container__', //锚点 传入的就是容器的id
            //   align: HorizontalAlign.End //相对于锚点的位置
            // }
            middle: {
              anchor: '__container__',
              align: HorizontalAlign.Center
            }
          })
          .id('text1')

        Text('2')
          .width(100)
          .height(100)
          .fontSize(30)
          .backgroundColor(Color.Orange)
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
          .id('text2')

        Text('3')
          .width(100)
          .height(100)
          .fontSize(30)
          .backgroundColor(Color.Red)
          .alignRules({
            center: {
              anchor: '__container__',
              align: VerticalAlign.Center
            }
          })
          .id('text3')

        Text('4')
          .width(100)
          .height(100)
          .fontSize(30)
          .backgroundColor(Color.Pink)
          .alignRules({
            bottom: {
              anchor: 'text1',
              align: VerticalAlign.Top
            },
            left: {
              anchor: 'text1',
              align: HorizontalAlign.Start
            }
          })
          .id('text4')
          .offset({
            x: -20,
            y: -20
          })

      }.height(300)
      .width(300)
      .border({
        width:1,
        color: Color.Red
      })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}