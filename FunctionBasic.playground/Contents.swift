/*
 inout key word
 */

func mySwap(_ a: inout Int, _ b: inout Int) {
    let t = a; a = b; b = t
}

var x = 100
var y = 0

print("x = \(x), y = \(y)")     // x, yの元の値

mySwap(&x, &y)                  // 呼び出し元のx, yの値を入れ替える

print("x = \(x), y = \(y)")     // x, yの値が入れ替わっている


swap(&x, &y)                    // Swiftの標準ライブラリには、swap関数がある
print("x = \(x), y = \(y)")
