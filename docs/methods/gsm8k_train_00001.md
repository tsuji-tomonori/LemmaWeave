# 48人への販売から分かる範囲と条件付きの72個

4月に48人へ販売し、5月は4月の半分。2か月のクリップ総数は？

**既に収集したGSM8Kの1問。入試問題数・新規収集数には加えない。**

- 48は人数であり1人1個を無条件に仮定しない。Leanは総数a≥48で表し個別配分との対応は自己照合。
- 可能範囲・反例・追加条件付き72個を区別する。

## clips_half：人数と個数を区別

条件：4月a個、5月m個。48人は各1個以上購入、mは整数、2m=a。

根拠：

得られること：a≥48よりm≥24、a=2m。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.clips_half`。

## clips_total：合計と下限

条件：総数t=a+m。

根拠：

得られること：t=3m≥72。人数だけでmは決まらない。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.clips_total`。

## clips_range：可能な合計をすべて示す

条件：各人の購入数に上限はない。

根拠：

得られること：可能な合計は3k（整数k≥24）、つまり72,75,78,…。逆にa=2kを48人に1個ずつ配り残りを誰かに配れば実現する。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.clips_range`。

## clips_counterexamples：異なる答えの反例

条件：48人が各1個買う場合と各2個買う場合。

根拠：

得られること：4月48・5月24なら72個、4月96・5月48なら144個。どちらも原文の人数と半分の条件に合う。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.clips_counterexamples`。

## clips_conditional：追加条件付きの結論

条件：4月は各人1個、合計48個と追加する。

根拠：

得られること：5月24個、合計72個。原文だけの一意な答えではない。

既習の根拠：中学既習の四則演算と等式変形。

この行のLean定理：`LemmaWeave.Tests.GSM8KFirstSteps.clips_conditional`。

Leanの最終根：`LemmaWeave.Tests.GSM8KFirstSteps.clips_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
