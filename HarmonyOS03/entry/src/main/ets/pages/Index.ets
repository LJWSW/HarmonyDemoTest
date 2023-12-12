
// 数字类型 (全局变量 组件中使用全局变量不需要加this)
let num1: number = 123
let num2: number = 12.3
let num3: number = 0x1f
let num4: number = 0o12
let num5: number = 66

// 字符串类型
let str1: string = 'HarmonyOS Next不支持Android应用了'
let str2: string = 'ArkTS'
let str3: string = `马总今年${num5}岁了`

// 布尔类型
let flag1: boolean = true
let flag2: boolean = false

// 联合类型
let a: number|string|boolean
a = 12
a = 'str'
a = true

// 枚举类型：使用枚举类型可以为一组数值赋予友好的名字
enum myColor{
  RED = 'red',
  BLUE = 'blue'
}
let content: myColor = myColor.RED

// Unknown any : 表示的是任意类型
let c: any
c = 12
c = true
c = '666'

let d: unknown
d = 12
d = true
d = '666'

// 代码格式化： ctrl + alt + l


@Entry
@Component
struct  Index {

  @State message: string = '你好鸿蒙OS'
  @State str4: string = 'HarmonyOS开发'

  build() {
    Column() {
      Text('message')
        .fontSize(50)

      Divider()
      Text(this.message)
        .fontSize(50)

      Divider()
      Button('按钮').onClick(() => {
        this.message = 'HarmonyOS'
      })

      Divider()
      Text(num2.toString())
        .fontSize(40)
      Text(`${num1}`)
        .fontSize(40)

      Divider()
      Text(`注意，访问属性需要加this this.str4=${this.str4}`)
        .fontSize(30)

      Divider()
      Text(`${content}`)
        .fontSize(30)

    }.height('100%')
  }
}