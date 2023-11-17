@Component
struct NewsItem {
  build() {
    Flex({ direction: FlexDirection.Row }) {
      Image('https://img2.baidu.com/it/u=1058853125,1611148444&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500')
        .width(100)
        .height(100)
        .borderRadius(8)

      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start }) {
        Text('新闻标题')
          .fontSize(16)
          .fontColor(Color.Black)

        Text('新闻内容新闻内容新闻内容新闻内容新闻内容新闻内容')
          .fontSize(14)
          .fontColor(Color.Gray)

        Row() {
          Text("2023-11-17")
            .fontSize(14)
            .width('50%')

          Text('新闻网')
            .width('50%')
            .textAlign(TextAlign.End)
        }.margin({ top: 20 })
      }.margin({ left: 10 })
    }.backgroundColor("#ff93a410")
    .margin({ top: 16 })
    .padding(10)
  }
}

export default NewsItem