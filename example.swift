// Template String

print("1 + 2 = \(1 + 2)")

// ↓イケてない例

class Ordered {
  func precedes(other: Ordered) -> Bool {
    fatalError("Implement me!")
  }
}

class Number: Ordered {
  var value: Double = 0

  override func precedes(other: Ordered) -> Bool {
    return value < (other as! Number).value
  }
}

// Swift には抽象クラスがないので、
// 上記 Ordered クラスのような「基底クラス」的なものを定義するのはイケてない
// other as! Number でダウンキャストしてるのがよろしくない

protocol Ordered2 {
  func precedes(other: Self) -> Bool
}

struct Number2: Ordered2 {
  var value: Double = 0
  func precedes(other: Number2) -> Bool {
    return value < other.value
  }
}
