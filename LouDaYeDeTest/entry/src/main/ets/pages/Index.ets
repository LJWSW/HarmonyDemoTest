import router from '@ohos.router';
let msg: String = 'Index页面传来的数据';

@Entry  //表示把当前组建定义未当前页面的入口组件
@Component //自定义组件的装饰器
struct Index {
  @State message: string = 'HarmonyOS'
  @State username: string = '张三' //响应式数据

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.username)
          .fontSize(40)
          .fontColor('red')
        Button('按钮')
          .onClick(() => {
            this.username = '李四'
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}