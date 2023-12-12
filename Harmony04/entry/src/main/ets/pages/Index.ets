@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Row() {
          Row() {

          }.backgroundColor(Color.Blue)
          .size({
            width: '100%',
            height: '100%'
          })
        }.width(200).height(200)
        .backgroundColor(Color.Red)
        .padding(20)
        .margin(40)
      }.backgroundColor(Color.Yellow)
      Text('this is Text this is Text this is Text this is Text this is Text this is Text this is Text this is Text')
        .fontSize(20)
        .width('90%')
        .margin({top:50})
        .constraintSize({
          maxWidth:200
        })
    }.height('100%')
    .width('100%')
  }
}