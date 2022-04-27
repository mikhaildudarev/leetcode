//  Created by Mikhail Dudarev on 27.04.2022.

extension Problem535EncodeAndDecodeTinyUrl {
    
    final class SolutionA: Problem535EncodeAndDecodeTinyUrlSolution {
        
        private static var shortUrlPrefix = "http://tinyurl.com/"
        private var longToShortUrlMap = [String: String]()
        private var shortToLongUrlMap = [String: String]()
        
        // Encodes a URL to a shortened URL.
        func encode(_ longUrl: String) -> String {
            guard let shortUrl = longToShortUrlMap[longUrl] else {
                let shortUrl = generateShortUrl()
                longToShortUrlMap[longUrl] = shortUrl
                shortToLongUrlMap[shortUrl] = longUrl
                return shortUrl
            }
            return shortUrl
        }
        
        // Decodes a shortened URL to its original URL.
        func decode(_ shortUrl: String) -> String {
            shortToLongUrlMap[shortUrl]! // It is guaranteed that the given shortUrl was encoded by the same object.
        }
        
        private func generateShortUrl() -> String {
            "\(Self.shortUrlPrefix)\(longToShortUrlMap.count + 1)"
        }
        
    }
    
}
