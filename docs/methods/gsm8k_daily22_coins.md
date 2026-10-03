# 硬貨の総額

ニッケル6枚、クォーターは2枚多く、ダイムはさらに4枚多いときの総額を求める。

**取得済み固定GSM8Kの1問。**

- 1ニッケル5セント、1クォーター25セント、1ダイム10セントを用いる。

## coins_quarters：クォーター枚数

条件：ニッケル6枚よりクォーターが2枚多い。

根拠：

得られること：クォーターは6+2=8枚。

既習の根拠：個数差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.coins_quarters`。

## coins_dimes：ダイム枚数

条件：ダイムはクォーターより4枚多い。

根拠：

得られること：ダイムは8+4=12枚。

既習の根拠：個数差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.coins_dimes`。

## coins_nickel_value：ニッケルの価値

条件：ニッケルは6枚で1枚5セント。

根拠：

得られること：6×5=30セント。

既習の根拠：単価と個数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.coins_nickel_value`。

## coins_quarter_value：クォーターの価値

条件：クォーターは8枚で1枚25セント。

根拠：

得られること：8×25=200セント。

既習の根拠：単価と個数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.coins_quarter_value`。

## coins_dime_value：ダイムの価値

条件：ダイムは12枚で1枚10セント。

根拠：

得られること：12×10=120セント。

既習の根拠：単価と個数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.coins_dime_value`。

## coins_total：セント合計

条件：三種類の硬貨価値をすべて足す。

根拠：

得られること：総額は30+200+120=350セント。

既習の根拠：金額の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.coins_total`。

## coins_dollars_cents：ドル表記

条件：100セントを1ドルとして350セントを換算する。

根拠：

得られること：答えは3ドル50セント（$3.50）。

既習の根拠：100での商と余りによる単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911A.coins_dollars_cents`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911A.coins_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
