@Entry
@Component
struct TestGridPage {
  @State message: string = 'Hello World'
  @State picImage: Resource[] = [$r('app.media.one'), $r('app.media.two'), $r('app.media.three'), $r('app.media.four'), $r('app.media.five'), $r('app.media.six'), $r('app.media.seven'), $r('app.media.eight')]

  build() {
    Grid() {
      ForEach(this.picImage, (item, index) => {
        if (index == 0) {
          GridItem() {
            Image(item)
              .borderRadius(8)
          }.rowStart(0)
          .rowEnd(1)
          .columnStart(0)
          .columnEnd(1)
        } else if (index == 1 || index == 2) {
          GridItem() {
            Image(item)
              .borderRadius(8)
          }.rowStart(0)
          .rowEnd(0)
          .columnStart(index + 1)
          .columnEnd(index + 1)
        } else if (index == 3) {
          GridItem() {
            Image(item)
              .borderRadius(8)
          }.rowStart(1)
          .rowEnd(1)
          .columnStart(2)
          .columnEnd(3)
        } else {
          GridItem() {
            Image(item)
              .borderRadius(8)
          }
        }
      })
    }
    .width('100%')
    .rowsTemplate('1fr 1fr 1fr')
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsGap(5)
    .columnsGap(5)
    .padding(5)
    .height(200)
  }
}