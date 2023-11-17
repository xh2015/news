
import promptAction from '@ohos.promptAction'
@Component
struct LoginInput {
  private inputPlaceHolder: string = '请输入账号'
  @Link private inputValue: string
  @Prop labelName: string

  build() {
    Row() {
      Text(this.labelName)
        .margin({ top: 15, right: 15 })

      TextInput({ placeholder: this.inputPlaceHolder,
        text: this.inputValue })
        .fontColor(Color.Black)
        .fontSize(20)
        .margin({ top: 15 })
        .onChange((value: string) => {
          this.inputValue = value
          promptAction.showToast({ message: `输入内容为：${value}` })
        })
    }
  }
}

export default LoginInput