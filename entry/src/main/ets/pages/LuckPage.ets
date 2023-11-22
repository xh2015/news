@Entry
@Component
export struct LuckPage {
  private luckyName: string[] = ['P50', '手机', '平板', '现金500', '开始抽奖', 'Q币40', '身体健康', 'iPhone14', '感谢参与']
  private realIndex: number[] = [0, 1, 2, 5, 8, 7, 6, 3]
  @State message: string = 'Hello World'
  @State currentIndex: number = 0
  @State selectIndex: number = 0
  @State stopCount: number = 50
  @State currentCount: number = 0
  @State mustIndex: number = -1

  build() {

    Flex({ justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center, direction: FlexDirection.Column }) {
      Row() {
        Button('抽取谢谢参与').onClick((event: ClickEvent) => {
          this.mustIndex = 8
        }).margin({ right: 10 })

        Button('随机抽奖')
          .backgroundColor(Color.Pink)
          .onClick((event: ClickEvent) => {
            this.mustIndex = -1
          })
      }.margin({ bottom: 10 })

      Text(`恭喜中奖${this.luckyName[this.selectIndex]}`)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Red)
        .margin({ bottom: 10 })

      Flex({
        direction: FlexDirection.Row,
        wrap: FlexWrap.Wrap,
        justifyContent: FlexAlign.SpaceAround,
        alignItems: ItemAlign.Center,
        alignContent: FlexAlign.SpaceAround
      }) {
        ForEach(this.luckyName, (item, index) => {
          if (index == 4) {
            Button(item)
              .width('30%')
              .height(130)
              .type(ButtonType.Normal)
              .borderRadius(15)
              .onClick(() => {
                if (this.timerId == -1) {
                  this.startLucky()
                }
              })
          } else {
            Column() {
              Image($r('app.media.money_back'))
                .width(100)
                .height(80)
              Text(item)
                .fontSize(20)
                .fontColor(Color.Black)
                .fontWeight(FontWeight.Bold)
                .margin({ top: 5 })
            }.width('30%')
            .backgroundColor(this.selectIndex == index ? Color.Pink : Color.White)
            .borderRadius(15)
            .padding(10)
          }
        })

      }.height(500)
      .width('100%')
      .backgroundColor('#ff88d72a')
    }.height('100%')
  }

  onPageShow() {
    // this.startLucky()
  }

  timerId = -1

  startLucky() {
    this.selectIndex = 0
    this.stopCount = Math.floor(Math.random() * 10 + 50)
    console.log(`旋转到${this.stopCount}`)
    this.timerId = setInterval(() => {
      this.countDownTimer()
    }, 80)
  }

  countDownTimer() {
    if (this.currentCount != this.stopCount) {
      this.currentCount++
    }
    this.currentIndex++
    if (this.currentIndex > 7) {
      this.currentIndex = 0
    }
    this.selectIndex = this.realIndex[this.currentIndex]

    if (this.currentCount == 30) {
      clearInterval(this.timerId)
      this.timerId = setInterval(() => {
        this.countDownTimer()
      }, 200)
    }

    if (this.mustIndex == -1) {
      if (this.currentCount == this.stopCount) {
        this.resetStatus()
      }
    } else {
      if (this.mustIndex == this.selectIndex && this.currentCount == this.stopCount) {
        this.resetStatus()
      }
    }
  }

  resetStatus() {
    clearInterval(this.timerId)
    this.timerId = -1
    this.currentCount = 0
  }
}