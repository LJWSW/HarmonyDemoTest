import {Container} from './widget/Container'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  // @Builder Container(num: string|number) {
  //   Row() {
  //       Text(`${num}`).fontSize(32).fontColor(Color.White)
  //   }
  //   .width(80)
  //   .height(80)
  //   .backgroundColor(Color.Red)
  //   .justifyContent(FlexAlign.Center)
  // }

  build() {
    Column() {
      Flex({
        direction: FlexDirection.Row,
        justifyContent: FlexAlign.Start,
        wrap: FlexWrap.Wrap,
        alignContent: FlexAlign.Center,
        alignItems: ItemAlign.Center
      }){
        Container()
        Container({text: 2, color: Color.Black, w: 90})
        Container({text: 3, color: Color.Orange, w: 60, h: 150})
        Container({text: 4, color: Color.Pink, h: 200})
        Container({text: 5, color: Color.Yellow})
        Container({text: 6, color: Color.Blue})
      }.height(500)
      .border({
        color: Color.Red,
        width: 4
      })

    }
    .width('100%')
    .height('100%')
  }
}
