# 毎月2倍の6か月貯金

1月2ドル、2月4ドル、3月8ドルと毎月2倍に貯金するとき6か月の総額を求める。

**取得済み固定GSM8Kの1問。**

- 提示された2,4,8の規則を前月の2倍と解釈する。

## savings_april：4月の貯金

条件：毎月前月の2倍で、3月は8ドル。

根拠：

得られること：4月は16ドル。

既習の根拠：次項＝2×前項。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.savings_april`。

## savings_may：5月の貯金

条件：4月は16ドル。

根拠：

得られること：5月は32ドル。

既習の根拠：次項＝2×前項。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.savings_may`。

## savings_june：6月の貯金

条件：5月は32ドル。

根拠：

得られること：6月は64ドル。

既習の根拠：次項＝2×前項。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.savings_june`。

## savings_total：6か月合計

条件：各月は2,4,8,16,32,64ドル。

根拠：

得られること：合計は126ドル。

既習の根拠：期間合計＝各月の金額の和。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.savings_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.savings_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
