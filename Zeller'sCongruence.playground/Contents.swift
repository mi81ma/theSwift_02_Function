/*
 Zeller's Congruence
 */

func dayOfweek(_ y:Int, _ m:Int, _ d:Int) -> Int {
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

print(dayOfweek(0, 1, 1))


/*
 Funcで受け取った値を変更して使う
 */

func dayOfWeek2(_ y:Int, _ m: Int, _ d:Int) -> Int {
    var y = y, m = m        // 仮引数y を 変数y に代入
    if m < 3 {
        m += 12; y -= 1
    }
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

print(dayOfWeek2(0, 1, 1))
