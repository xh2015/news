@Entry
@Component
export struct TestGridPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      PicGrid()
      GridRowExample()
    }
  }
}

@Component
struct GridRowExample {
  @State bgColors: Color[] = [Color.Red, Color.Orange, Color.Yellow, Color.Green, Color.Pink, Color.Grey, Color.Blue, Color.Brown]
  @State currentBp: string = 'unknown'

  build() {
    Column() {
      GridRow({
        columns: 5,
        gutter: { x: 5, y: 10 },
        breakpoints: { value: ["400vp", "600vp", "800vp"],
          reference: BreakpointsReference.WindowSize },
        direction: GridRowDirection.Row
      }) {
        ForEach(this.bgColors, (color) => {
          GridCol({ span: { xs: 1, sm: 2, md: 3, lg: 4 } }) {
            Row().width("100%").height("20vp")
          }.borderColor(color).borderWidth(2)
        })
      }.width("100%").height("100%")
      .onBreakpointChange((breakpoint) => {
        this.currentBp = breakpoint
      })
    }.width('80%').margin({ left: 10, top: 5, bottom: 5 }).height(200)
    .border({ color: '#880606', width: 2 })
  }
}

@Component
struct PicGrid {
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