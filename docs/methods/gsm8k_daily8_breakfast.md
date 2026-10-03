# 二人分の朝食代を品目別に合計する

トースト1枚1ポンド、卵1個3ポンドで、DaleとAndrewが食べた朝食の総額を求める。

**取得済み固定GSM8Kの1問。**

- 各人・各品目の小計を重複なく足す。

## breakfast_dale_toast：Daleのトースト代

条件：2枚を各1ポンドで食べる。

根拠：

得られること：2ポンド。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.breakfast_dale_toast`。

## breakfast_andrew_toast：Andrewのトースト代

条件：1枚を1ポンドで食べる。

根拠：

得られること：1ポンド。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.breakfast_andrew_toast`。

## breakfast_dale_eggs：Daleの卵代

条件：2個を各3ポンドで食べる。

根拠：

得られること：6ポンド。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.breakfast_dale_eggs`。

## breakfast_andrew_eggs：Andrewの卵代

条件：2個を各3ポンドで食べる。

根拠：

得られること：6ポンド。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.breakfast_andrew_eggs`。

## breakfast_total：朝食総額

条件：4つの小計2、1、6、6ポンドを足す。

根拠：

得られること：15ポンド。

既習の根拠：品目別小計の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.breakfast_total`。

## breakfast_exists：条件の充足

条件：小計2、1、6、6と総額15を置く。

根拠：

得られること：単価、数量、合計条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.breakfast_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.breakfast_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
