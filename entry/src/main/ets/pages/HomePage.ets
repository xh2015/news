import router from '@ohos.router';

@Entry
@Component
struct HomePage {
  @State message: string = 'Hello World'
  // private username: string = router.getParams()['username']

  build() {
    List() {
      ListItem() {
        Text('列表一')
          .fontSize(20)
          .fontColor(Color.Red)
      }

      ListItem() {
        Text('列表二')
          .fontSize(20)
          .fontColor(Color.Red)
      }
    }
  }

  aboutToAppear() {
    console.log('home page aboutToAppear')
  }

  aboutToDisappear() {
    console.log('home page aboutToDisappear')
  }

  onPageShow() {
    console.log('home page onPageShow')
  }

  onPageHide() {
    console.log('home page onPageHide')
  }

  onBackPress() {
    console.log('home page onBackPress')
  }
}