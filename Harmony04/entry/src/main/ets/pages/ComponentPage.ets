@Entry
@Component
struct ComponentPage {
  @State message: string = 'Hello World'

  build() {
    Column({space:10}){
      Container({w: 100, h:100})
      Container()
      Container()

      Row(){
        Text('热门推荐').fontSize(30).fontWeight(FontWeight.Bold).padding({left:10})
        Text('更多》').fontSize(20).fontWeight(FontWeight.Bold).padding({right:10})
      }.width('100%').height(60).backgroundColor(Color.Red)
      .justifyContent(FlexAlign.SpaceBetween) //调整水平位置
      .alignItems(VerticalAlign.Top) //调整垂直位置

    }.width('100%').height('100%')
  }
}

// 自定义组件
@Component
struct Container{
  w: number = 200;
  h: number = 200;
  build(){
    Row(){
      Image($r('app.media.icon')).width(40).height(40)
    }.width(this.w)
    .height(this.h)
    .backgroundColor(Color.Red)
    .justifyContent(FlexAlign.Center)
  }
}