@Entry
@Component
struct StackListButtonPage {
  @State message: string = 'Hello World'
  @State list: number[] = [1, 2, 3]

  build() {
    Column() {
      Stack({alignContent: Alignment.BottomEnd}) {
        Column() {
          List({space: 10}) {
            ForEach(this.list, (item) => {
              ListItem() {
                Text(`${item}`)
                  .fontSize(28)
                  .width('100%')
                  .height(50)
                  .backgroundColor('#eee')
                  .textAlign(TextAlign.Center)
              }
            }, item => item)
          }
        }
        .height('100%')

        Button() {
          Text('+').fontSize(40).fontColor(Color.White)
        }.width(80)
        .height(80)
        .margin({bottom: 10, right: 10})
        .onClick(() => {
          this.doAdd() //调用自定义方法
        })
      }
      .height('100%')
    }
    .width('100%')
    .height('100%')
  }

  doAdd() {
    this.list.push(this.list[this.list.length-1]+1)
  }
}