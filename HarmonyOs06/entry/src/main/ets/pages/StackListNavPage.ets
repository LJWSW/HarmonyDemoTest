@Entry
@Component
struct StackListNavPage {
  @State message: string = 'Hello World'
  @State list: number[] = [1, 2, 3, 4]

  @Builder HeaderWidget() {
    Row() {
      Text('HarmonyOS')
        .fontSize(30)
        .fontColor(Color.White)
        .textAlign(TextAlign.Center)
        .width('100%')
    }
    .width('100%')
    .height(50)
    .backgroundColor(Color.Orange)
  }

  @Builder BodyWidget() {
    Column() {
      List({ space: 10 }) {
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
      }.margin({ top: 60 })
    }.height('100%')
  }

  @Builder ButtonWidget() {
    Button() {
      Text('+').fontSize(40).fontColor(Color.White)
    }.width(80)
    .height(80)
    .margin({ bottom: 10, right: 10 })
    .onClick(() => {
      this.doAdd()
    })
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.BottomEnd }) {
        Stack({ alignContent: Alignment.TopStart }) {
          this.BodyWidget()
          this.HeaderWidget()
        }
        this.ButtonWidget()
      }
    }
    .width('100%')
    .height('100%')
  }

  doAdd() {
    this.list.push(this.list[this.list.length-1] + 1)
  }
}

// @Component
// struct Nav{
//   build() {
//     Row() {
//       Text('HarmonyOS')
//         .fontSize(30)
//         .fontColor(Color.White)
//         .textAlign(TextAlign.Center)
//         .width('100%')
//     }
//     .width('100%')
//     .height(50)
//     .backgroundColor(Color.Orange)
//   }
// }