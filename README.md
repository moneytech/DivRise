# DivRise

DivRise is an iOS app written in **Pure SwiftUI** that tracks dividend prices of your stocks, gives you in-depth information about dividend paying stocks like the next dividend date and allows you to log your monthly dividend payments.

## Getting Started

### Prerequisites

```
Xcode 11 will install all necessary dependencies through Swift Package Manager.
```

### Installing

Since AlphaVantage has strict limits on API calls and the app is currently using my API keys, you may want to create an [api key](https://www.alphavantage.co/support/#api-key) and save your API key to `Dividend App/Networking/Request.swift` for best experience.

Also, since NewsAPI has strict limits on API calls, you may want to create an [api key](https://newsapi.org/register) and save your API key to `Dividend App/Networking/Request.swift`.

```
Open Dividend App.xcodeproj and run
```

## Built With

* [ChartView](https://github.com/AppPear/ChartView) - SwiftUI Charts
* [URLImage](https://github.com/dmytro-anokhin/url-image) - Remote Image Loading

## License

This project is licensed under the GPL License - see the [LICENSE](LICENSE) file for details

## Screenshots

<img src="./AppPhotos/portfolio.png" height="500"> <img src="./AppPhotos/details.png" height="500"> <img src="./AppPhotos/details_onclick.png" height="500"> <img src="./AppPhotos/details_news_ontouch.png" height="500"> <img src="./AppPhotos/details_news.png" height="500"> <img src="./AppPhotos/safari.png" height="500"> <img src="./AppPhotos/portfolio_info.png" height="500"> <img src="./AppPhotos/info_editlist.png" height="500"> <img src="./AppPhotos/info_edit.png" height="500"> <img src="./AppPhotos/search.png" height="500"> <img src="./AppPhotos/search_onclick.png" height="500"> <img src="./AppPhotos/menu.png" height="500"> <img src="./AppPhotos/dividend_tracker.png" height="500"> <img src="./AppPhotos/dividend_tracker_ontouch.png" height="500"> <img src="./AppPhotos/dividend_tracker_add.png" height="500"> <img src="./AppPhotos/settings.png" height="500"> 