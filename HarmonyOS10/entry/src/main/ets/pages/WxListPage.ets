interface WxListInterface {
  title: string,
  img: Resource
}

@Entry
@Component
struct WxListPage {
  @State wxList: WxListInterface[] = [
    {
      title: '服务',
      img:$r('app.media.icon')
    },
    {
      title: '收藏',
      img:$r('app.media.icon')
    },
    {
      title: '朋友圈',
      img:$r('app.media.icon')
    },
    {
      title: '视频号',
      img:$r('app.media.icon')
    },
    {
      title: '设置',
      img:$r('app.media.icon')
    },
  ]

  build() {
    Column() {
      List({space: 10}){
        ListItem(){
          Text('1')
        }.backgroundColor(Color.Orange)
        .height(150)
        .width('100%')

        ListItem(){
          Row(){
            Row(){
              Image(this.wxList[0].img)
                .width(28)
                .height(28)
                .objectFit(ImageFit.Cover)
              Text(`${this.wxList[0].title}`).fontSize(16)
            }

            Image($r('app.media.app_icon'))
              .width(28)
              .height(28)
              .objectFit(ImageFit.Cover)

          }.justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
          .backgroundColor('#fff')
          .padding(10)
        }

        ListItem(){
          Column(){
            ForEach(this.wxList, (item: WxListInterface, key) =>{
              if (key > 0 && key < this.wxList.length - 1) {
                Row(){
                  Row(){
                    Image(item.img)
                      .width(28)
                      .height(28)
                      .objectFit(ImageFit.Cover)
                    Text(`${item.title}`).fontSize(16)
                  }
                  Image($r('app.media.app_icon'))
                    .width(28)
                    .height(28)
                    .objectFit(ImageFit.Cover)

                }.justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
                .padding(10)

                Divider()
                  .strokeWidth(1)
                  .color('#eee')
                  .padding({left: 20})
              }
            }, item => item)
          }
          .backgroundColor(Color.White)
        }

        ListItem(){
          Row(){
            Row(){
              Image(`${this.wxList[this.wxList.length - 1].img}`)
                .width(28)
                .height(28)
                .objectFit(ImageFit.Cover)
              Text(`${this.wxList[this.wxList.length - 1].title}`).fontSize(16)
            }

            Image($r('app.media.app_icon'))
              .width(28)
              .height(28)
              .objectFit(ImageFit.Cover)

          }.justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
          .backgroundColor('#fff')
          .padding(10)
        }
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#eee')
  }
}