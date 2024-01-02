import {Container} from './widget/Container'

@Entry
@Component
struct FlexColumnPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Flex({
        direction: FlexDirection.Column,
        justifyContent: FlexAlign.Center,
        wrap: FlexWrap.Wrap,
        alignContent: FlexAlign.Center
      }){
        Container()
        Container({text: 2, color: Color.Black})
        Container({text: 3, color: Color.Orange})
        Container({text: 4, color: Color.Pink})
        Container({text: 5, color: Color.Yellow})
        Container({text: 6, color: Color.Blue})
      }
      .width('100%')
      .border({
        color: Color.Red,
        width: 4
      })

    }
    .width('100%')
    .height('100%')
  }
}