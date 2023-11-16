import prompt from '@system.prompt';
import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
        //添加按钮 以响应用户点击
        Button() {
          Text('Next')
            .fontColor(Color.White)
            .fontWeight(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({ top: 20 })
        .backgroundColor('#0d9ffb')
        .width('40%')
        .height('5%')
        .onClick(() => {
          // prompt.showToast({message:'hello world'})
          console.info(`Succeeded in clicking the 'Next' button.`)
          router.pushUrl({ url: 'pages/Second' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err) => {
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })

      }
      .width('100%')
    }
    .height('100%')
  }
}