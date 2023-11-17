@Entry
@Component
struct PropDiffLinkPage {
  @State text: string = "0"

  build() {
    Column() {
      Text(this.text).fontSize(18).fontColor(0x0033aa)
      Button('演示@State功能').onClick(() => {
        this.text = '1'
      })
      Column().margin(30)
      ChildA({ text: this.text })
      Column().margin(30)
      ChildB({ text: $text })
    }
  }
}

@Component
struct ChildA {
  @Prop text: string

  build() {
    Column() {
      Text(this.text).fontSize(18).fontColor(0x3300aa)
      Button('演示@Prop功能').onClick(() => {
        this.text = '2'
      })
    }
  }
}

@Component
struct ChildB {
  @Link text: string

  build() {
    Column() {
      Text(this.text).fontSize(18).fontColor(0x33aa00)
      Button('演示@Link功能').onClick(() => {
        this.text = '3'
      })
    }
  }
}