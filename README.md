## Simple Swift implementation of a Framework
Simple SDK that makes use of [OpenWeatherMap](http://openweathermap.org/) API.

### Quick start with SDK


```swift
let sdk = OpenWeatherMapSDK(appKey: "YOUR-BEATUTIFUL-API-KEY-NOT-MINE")
let task = sdk.searchByNameTask("Lisbon,PT", completion: { (obj, success) -> Void in
            
    if (success!){
        
        println("Completed request with success? \(success), response => \(obj)")
        
    } else{
        
        println("HERE BE DRAGONS!")
    }
})
```

## Some useful calls already included on SDK

#### search by city,country_code

```swift
func searchByNameTask(name: String, completion:CompletionHandler) -> NSURLSessionDataTask 
```

#### search by city ID

```swift
func searchByIdTask(id: String, completion:CompletionHandler) -> NSURLSessionDataTask
```

#### search by coordinates

```swift
func searchByCoordinatesTask(latitude: Double, longitude: Double, completion:CompletionHandler) -> NSURLSessionDataTask 
```

#### search by bounding box with map zoom

```swift
func searchByBoundingBoxTask(latitudeA: Double, longitudeA: Double, latitudeB: Double, longitudeB: Double, zoom:Double, completion:CompletionHandler) -> NSURLSessionDataTask 
```

#### search by radius with center coordinates

```swift
func searchByCircleTask(latitude:Double, longitude: Double, radius:Double, completion:CompletionHandler) -> NSURLSessionDataTask
```

#### search by a list of city IDs

```swift
func searchByIdListTask(cityIds:[String], completion:CompletionHandler) -> NSURLSessionDataTask
```
