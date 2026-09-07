# 全切れ数と人数から残りを求める

クッキーパイ3枚を各10切れにし、Manny、同級生24人、教師1人が1切れずつ食べた残りを求める。

**取得済み固定GSM8Kの1問。**

- Manny本人も食べるため人数に1人加える。

## cookies_total：全切れ数

条件：3枚を各10切れにする。

根拠：

得られること：30切れ。

既習の根拠：単位当たり数×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.cookies_total`。

## cookies_people：食べた人数

条件：同級生24人、Manny1人、教師1人。

根拠：

得られること：26人。

既習の根拠：互いに異なる集団の人数加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.cookies_people`。

## cookies_left：残りの切れ数

条件：30切れから26人分を引く。

根拠：

得られること：4切れ。

既習の根拠：1人1切れなので消費数＝人数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.cookies_left`。

## cookies_exists：条件の充足

条件：30切れ、26人、残り4切れを置く。

根拠：

得られること：切分け、人数、残数条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.cookies_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.cookies_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
