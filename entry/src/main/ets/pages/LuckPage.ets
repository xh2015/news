@Entry
@Component
struct LuckPage {
  private luckyName: string[] = ['P50', '手机', '平板', '现金500', '开始抽奖', 'Q币40', '身体健康', 'iPhone14', '感谢参与']
  @State message: string = 'Hello World'
  @State currentIndex:number = 0
  build() {

    Flex({ justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
      Flex({
        direction: FlexDirection.Row,
        wrap: FlexWrap.Wrap,
        justifyContent: FlexAlign.SpaceAround,
        alignItems: ItemAlign.Center,
        alignContent: FlexAlign.SpaceAround
      }) {
        ForEach(this.luckyName, (item, index) => {
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
          .backgroundColor(Color.White)
          .borderRadius(15)
          .padding(10)
        })

      }.height(500)
      .width('100%')
      .backgroundColor('#ff88d72a')
    }.height('100%')
  }
}