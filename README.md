# IDNumVerif
用来简单的验证身份证号码是否正确

## 核心代码
```
func validateID(_ id: String) -> Bool {
var sum = 0
let multiplyNums = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2]
let numDict =  ["0": "1","1": "0",
"2": "X", "3": "9",
"4": "8", "5": "7",
"6": "6", "7": "5",
"8": "4", "9": "3",
"10": "2"]

for (idx, value) in id.enumerated() {
if idx == (id.count - 1){
break
}
sum = sum + ((value.wholeNumberValue ?? 0) * multiplyNums[idx])
}

sum = sum % 11
return Int(numDict["\(sum)"]!) == id.last?.wholeNumberValue
}
```
