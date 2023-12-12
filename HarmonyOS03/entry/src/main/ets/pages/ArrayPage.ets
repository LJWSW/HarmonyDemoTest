let arr1: Array<string> = ['鸿蒙os', 'flutter', 'golang']
let arr2: number[] = [1, 23, 45, 65]
let x: [string, number, boolean] = ['this is str', 12, false]

@Entry
@Component
struct ArrayPage {
  @State flag: boolean = true
  @State message: string = 'Hello World'

  arr3: string[] = ['鸿蒙os', 'flutter', 'golang']
  arr4: object[] = [
    {
      id: '1',
      title: '鸿蒙OS',
      content: '鸿蒙os'
    },
    {
      id: '2',
      title: 'flutter',
      content: 'flutter'
    },
    {
      id: '3',
      title: 'golang',
      content: 'golang'
    }
  ]

  build() {
    Column(){
      Button('改变flag').onClick((event: ClickEvent) => {
        this.flag=!this.flag;
      })

      List({space: 10}){
        if (this.flag) {
          ListItem(){
            Text(`${x[0]}`)
              .fontSize(24)
              .width('100%')
              .height(60)
              .textAlign(TextAlign.Center)
              .backgroundColor('blue')
              .borderRadius(20)
          }
        }

        ForEach(this.arr3, (item, key) => {
          ListItem(){
            Text(`${item}--${key}`)
              .fontSize(24)
              .width('100%')
              .height(60)
              .textAlign(TextAlign.Center)
              .backgroundColor('#eee')
              .borderRadius(20)
          }
        }, item => item)

        ForEach(this.arr4, (item, key) => {
          ListItem(){
            Text(`${item.title}--id:${item.id}--key:${key}`)
              .fontSize(24)
              .width('100%')
              .height(60)
              .textAlign(TextAlign.Center)
              .backgroundColor('#eee')
              .borderRadius(20)
          }
        }, item => item)

        // ListItem(){
        //   Text('鸿蒙OS')
        //     .fontSize(24)
        //     .width('100%')
        //     .height(60)
        //     .textAlign(TextAlign.Center)
        //     .backgroundColor('#eee')
        //     .borderRadius(20)
        // }
        // ListItem(){
        //   Text('flutter')
        //     .fontSize(24)
        //     .width('100%')
        //     .height(60)
        //     .textAlign(TextAlign.Center)
        //     .backgroundColor('#eee')
        //     .borderRadius(20)
        // }
        // ListItem(){
        //   Text('golang')
        //     .fontSize(24)
        //     .width('100%')
        //     .height(60)
        //     .textAlign(TextAlign.Center)
        //     .backgroundColor('#eee')
        //     .borderRadius(20)
        // }
      }
    }.height('100%')
    .width('100%')
    .padding(10)
  }
}