# IDNumVerif
用来简单的验证身份证号码是否正确

## 核心代码
验证身份证格式
```
func validateIDFormat(_ id: String) -> Bool{
    let pattern = "^[1-9][0-9]{5}(?:19|20)?[0-9]{2}(?:0[1-9]|1[012])(?:0[1-9]|[12][0-9]|3[01])[0-9]{3}[0-9Xx]?$"
    let predicate = NSPredicate(format: "SELF MATCH %@", pattern)
    return predicate.evaluate(with: id)
}
```

验证身份证号码是否正确

```
func validateID(_ id: String) -> Bool {
    if !validateIDFormat(id) {
        return false
    }

    var sum = 0
    let factors = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2]
    let checkCodes =  ["0": "1","1": "0",
                    "2": "X", "3": "9",
                    "4": "8", "5": "7",
                    "6": "6", "7": "5",
                    "8": "4", "9": "3",
                    "10": "2"]

    for (idx, value) in id.enumerated() {
        if idx == (id.count - 1) { break }
        guard let num = value.wholeNumberValue else { return false }
        sum = sum + (num * factors[idx])
    }

    sum = sum % 11
    return Int(checkCodes["\(sum)"]!) == id.last?.wholeNumberValue
}

```
