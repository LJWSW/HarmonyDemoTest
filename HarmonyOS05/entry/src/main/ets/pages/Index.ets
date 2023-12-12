@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row() {
        Row() {

        }
        .width('33%')
        .height(160)
        .backgroundColor('red')
        .layoutWeight(1)

        Row() {

        }
        .width('33%')
        .height(160)
        .backgroundColor('blue')
        .layoutWeight(1)

        Row() {

        }
        .width(100)
        .height(160)
        .backgroundColor(Color.Orange)
      }
      .width('100%')
      .height(160)

      // Row() {
      //   Row() {
      //
      //   }
      //   .width('33%')
      //   .height(120)
      //   .backgroundColor('red')
      //   .layoutWeight(2)
      //
      //   Row() {
      //
      //   }
      //   .width(1)
      //   .height(120)
      //   .backgroundColor('blue')
      //   .layoutWeight(3)
      //
      // }
      // .width('100%')
      // .height(160)

      Row({space: 10}) {
        Row() {}
        .width('33%')
        .height(120)
        .backgroundColor(Color.Gray)
        .layoutWeight(2)

        Row() {}
        .width(1)
        .height(120)
        .backgroundColor(Color.Pink)
        .layoutWeight(3)

      }
      .width('100%')
      .height(160)

      Row({space: 10}) {
        Row() {}
        .width(100)
        .height(120)
        .backgroundColor(Color.Orange)

        Row() {}
        .width('33%')
        .height(120)
        .backgroundColor(Color.Gray)
        .layoutWeight(2)
      }
      .width('100%')
      .height(160)

      Column(){
        Row()
          .width('100%')
          .height(100)
          .backgroundColor(Color.Gray)
          .layoutWeight(1)
        Row()
          .width('100%')
          .height(60)
          .backgroundColor(Color.Red)
          .layoutWeight(2)
      }
      .width('100%')
      .height(120)

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}