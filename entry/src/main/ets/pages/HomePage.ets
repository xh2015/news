import router from '@ohos.router';
import NewsItem from '../component/NewsItem'

@Entry
@Component
export  struct HomePage {
  @State message: string = 'Hello World'
  // private username: string = router.getParams()['username']
  @State newsListInfo: string[] = ['女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二', '女生一', '女生二']

  build() {
    List() {
      ForEach(this.newsListInfo, (item, index) => {
        ListItem(){
          NewsItem()
        }
      })
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