import { HomePage } from '../pages/HomePage'
import { LuckPage } from '../pages/LuckPage'
import { TestGridPage } from '../pages/TestGridPage'
import { LoginPage } from '../pages/LoginPage'

@Entry
@Component
struct MainPage {
  build() {
    Tabs() {
      TabContent() {
        HomePage()
      }
      .tabBar('首页')

      TabContent() {
        LuckPage()
      }
      .tabBar('视频')

      TabContent() {
        TestGridPage()
      }
      .tabBar('消息')

      TabContent() {
        LoginPage()
      }
      .tabBar('我的')
    }
  }
}