@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Stack({alignContent: Alignment.TopStart}) {
        Row(){}
        .width(300)
        .height(300)
        .backgroundColor(Color.Red)

        Row(){}
        .width(200)
        .height(200)
        .backgroundColor(Color.Blue)

        Row(){}
        .width(100)
        .height(100)
        .backgroundColor(Color.Yellow)
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}