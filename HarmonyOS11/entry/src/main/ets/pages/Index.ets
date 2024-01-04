import {Article} from  './model/Article'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State articleList: Article[] = [
    new Article(
      1,
      '新手攻略｜开启关怀模式，与家人更亲近～',
      'xx',
      '国家电网',
      '2024-12-12'
    ),
    new Article(
      2,
      '反诈课堂｜光伏骗局套路多听我给您细细说！',
      'xx',
      '国家电网',
      '2024-4-2'
    ),
    new Article(
      3,
      '新手攻略｜联合办、网上办一次办，这些地方的用户注',
      'xx',
      '国家电网',
      '2024-1-12'
    ),
    new Article(
      4,
      '新手攻略｜轻轻一点，电费一键查询',
      'xx',
      '国家电网',
      '2024-12-2'
    ),
  ]

  build() {
    Column() {
      List() {
        ForEach(this.articleList, (item: Article, key) => {
          ListItem() {
            Row() {
              Column() {
                Text(`${item.title}`).fontSize(16).fontWeight(FontWeight.Bold)
                Text(`${item.author} ${item.date}`).fontSize(14)
              }.layoutWeight(1)
              .alignItems(HorizontalAlign.Start)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(68)
              Image($r('app.media.app_icon'))
                .width(100)
                .height(68)
                .borderRadius(10)
                .margin({left:4})
            }.width('100%')
            .height(80)
          }
          .padding({
            top: 8,
            bottom: 8
          })
        }, item => item)


      }
      .backgroundColor('#fff')
      .borderRadius(10)
      .padding(10)
      .divider({
        strokeWidth: 1,
        color: 'eee'
      })
      .margin(10)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#eee')
  }
}