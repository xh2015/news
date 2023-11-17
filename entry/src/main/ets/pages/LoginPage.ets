import router from '@ohos.router'
import LoginInput from '../component/LoginInput'

@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World'
  @State inputAccountValue: string = '123'
  @State inputPwdValue: string = '123'

  build() {
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
      Text('登录')
        .fontSize(20)
        .fontColor(Color.Red)

      Text(this.inputAccountValue)

      if (this.inputAccountValue.length < 5 || this.inputAccountValue.length > 8) {
        Text('账号必须5-8位')
          .fontSize(15)
          .fontColor(Color.Red)
      }

      LoginInput({ inputPlaceHolder: '请输入账号', inputValue: $inputAccountValue, labelName: '账号' })
      LoginInput({ inputPlaceHolder: '请输入密码', inputValue: $inputPwdValue, labelName: '密码' })

      this.loginBtn()

    }
  }

  @Builder loginBtn() {
    Button('登录')
      .margin({ top: 20 })
      .width('100%')
      .onClick(() => {
        router.pushUrl({ url: 'pages/HomePage', params: { 'username': '张三' } })
      })
  }

  aboutToAppear() {
    console.log('login page aboutToAppear')
  }

  aboutToDisappear() {
    console.log('login page aboutToDisappear')
  }

  onPageShow() {
    console.log('login page onPageShow')
  }

  onPageHide() {
    console.log('login page onPageHide')
  }

  onBackPress() {
    console.log('login page onBackPress')
  }
}