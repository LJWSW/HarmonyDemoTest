@Entry
@Component
struct Index {
  @State hotSearch: string[] = ['女装', '鞋子', '军大衣', '花棉袄', 'Flutter教程']

  @Builder SearchButton(text: string){
    Button({type: ButtonType.Normal}){
        Text(text)
        .fontSize(18)
    }.backgroundColor('#eee')
    .padding({left: 14, right:14, top: 8, bottom: 8})
    .margin(6)
    .borderRadius(10)
  }

  build() {
    Column() {
      Text('热搜')
        .fontSize(26)
        .fontWeight(FontWeight.Bold)
        .width('100%')
        .textAlign(TextAlign.Start)
        .padding(10)
        .fontColor('#666')
      Flex({
        wrap: FlexWrap.Wrap
      }){
        ForEach(this.hotSearch, (item, key) => {
          this.SearchButton(item)
        }, item => item)

      }
    }
    .width('100%')
    .height('100%')
  }
}