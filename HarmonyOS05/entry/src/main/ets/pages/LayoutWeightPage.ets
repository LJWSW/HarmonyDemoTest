@Entry
@Component
struct LayoutWeightPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row() {
        Image('https://www.itying.com/images/flutter/2.png')
          .objectFit(ImageFit.Cover)
      }
      .width('100%')
      .height(160)
      .backgroundColor(Color.Blue)

      Row({space: 10}) {
        Row(){
          Image('https://www.itying.com/images/flutter/3.png')
            .objectFit(ImageFit.Cover)
        }
        .height(160)
        .layoutWeight(2)
        .backgroundColor(Color.Blue)

        Row(){
          Column({space: 10}){
            Row(){
              Image('https://www.itying.com/images/flutter/4.png')
                .objectFit(ImageFit.Cover)
            }
            .layoutWeight(1)
            .width('100%')

            Row() {
              Image('https://www.itying.com/images/flutter/5.png')
                .objectFit(ImageFit.Cover)
            }
            .layoutWeight(2)
            .width('100%')
          }
          .width('100%')
          .height('100%')
        }
        .height(160)
        .layoutWeight(1)

      }
      .width('100%')
      .height(160)
      .margin({top: 10})
    }
    .width('100%')
    .height('100%')
  }
}