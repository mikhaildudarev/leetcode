/**
 https://leetcode.com/problems/encode-and-decode-tinyurl/
 
 Note: This is a companion problem to the System Design problem: Design TinyURL.
 TinyURL is a URL shortening service where you enter a URL such as https://leetcode.com/problems/design-tinyurl and it returns a short URL such as http://tinyurl.com/4e9iAk. Design a class to encode a URL and decode a tiny URL.
 
 There is no restriction on how your encode/decode algorithm should work. You just need to ensure that a URL can be encoded to a tiny URL and the tiny URL can be decoded to the original URL.
 
 Implement the Solution class:
 Solution() Initializes the object of the system.
 String encode(String longUrl) Returns a tiny URL for the given longUrl.
 String decode(String shortUrl) Returns the original long URL for the given shortUrl. It is guaranteed that the given shortUrl was encoded by the same object.
 
 Example 1:
 Input: url = "https://leetcode.com/problems/design-tinyurl"
 Output: "https://leetcode.com/problems/design-tinyurl"
 
 Explanation:
 Solution obj = new Solution();
 string tiny = obj.encode(url); // returns the encoded tiny url.
 string ans = obj.decode(tiny); // returns the original url after deconding it.
 
 Constraints:
 1 <= url.length <= 104
 url is guranteed to be a valid URL.
 */

class Codec {
    
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

let codec = Codec()
let originalUrl = "https://leetcode.com/problems/design-tinyurl"
let encodedUrl = codec.encode(originalUrl)
let decodedUrl = codec.decode(encodedUrl)
assert(decodedUrl == originalUrl)

