@Entry
@Component
struct Index {
  @State list: number[] = [1, 23, 4, 5, 6, 7, 8, 9, 12]

  build() {
    Column() {
      List({space: 30, initialIndex: 2}){
        ForEach(this.list, (item) => {
          ListItem(){
            Text(`${item}`).textAlign(TextAlign.Center)
              .width('100%')
              .height(100)
              .fontSize(30)
          }.backgroundColor(0xffffff)
        })
      }.padding(10)
      .divider({
        strokeWidth: 5,
        color: Color.Red,
        startMargin:20,
        endMargin:20
      })
      .listDirection(Axis.Vertical) //配置list显示的方向
      .scrollBar(BarState.Auto) //配置右侧滚动条
      .edgeEffect(EdgeEffect.Fade)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(0xeeeeee)
  }
}