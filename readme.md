# Linux Shell: 程式設計與管理實務
這是我個人的閱讀筆記，本書作者為臥龍小三。

## Shell
指的是 user 跟 OS kernel 中間的 interface。

最早的版本是 1979 年 Bourne Shell (sh) ，之後有百家爭鳴。

## Bash Shell (Bourne Again Shell)
比較新的版本，相容於 Bash ，汲取百家特長。可程式化，也就是撰寫 shell script。

## `/dev/null`
這是一個空檔案，可以用它來清空別的檔案 (把他複製到別的檔案上覆蓋掉別的檔案)。

## 查看現在的 shell
檢查目前用的 shell 名稱
```
echo $SHELL
```

檢查目前用的 bash shell 版本
```
echo $BASH_VERSION
```

# 基礎概念介紹

## 登入
- local login
- remote login

local login 預設會有 7 個 tty 可供使用，其中除了 tty7 都是文字介面，只有 tty7 是圖形介面。使用 ctrl+alt+F1 到 ctrl+alt+F7 切換。

# 切換目錄
可先用 pushd 存一個位置，然後用 popd 快速到該位置。

```
pushd .
cd /usr/
popd
```

# 特殊權限

## set user id
執行時，用檔案擁有者 (user) 身份，例如原本是 0755 要寫成 4755 ，或是 rwsr-xr-x。

## set group id
執行時，用檔案所有群組身份。0755 -> 2755

## sticky bit
除了使用者之外不能刪掉此檔案。0755 -> 1755

# wildcard
*, ? ,[a-z]

就像 regular expression

# Brace Expansion
這超強的，有 Cartesian product 的感覺。請小心，逗號後面不要加空白，在 bash shell 空白非常有意思。

還可以自動補完
```
echo {1..10..3}
echo
```

可以在前面補 0 ，但就只能補 0 ，不能補別的。
```
echo {001..10}
```

# Standard io
- stdin 0
- stdout 1
- stderr 2

# Redirect
## `<`
把鍵盤輸入換成檔案輸入
```
cat < hello.sh
```

## `>`
把螢幕輸出換成檔案輸出
```
cat < hello.sh > hello2.txt
```

## `>>`
跟 `>` 很像，只是以附加的方式輸出到檔案

## `|`
把前面的輸出接到後面的輸入

# 前景與背景
&

# 範例程式
記得 if 的括號跟裡面的東西之間要用空白隔開
