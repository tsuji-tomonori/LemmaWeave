# 超過時間から総収入を求める

週40時間で基本給500ドル、超過1時間20ドルで50時間働いたときの総収入を求める。

**取得済み固定GSM8Kの1問。**

- 基本給500ドルは40時間分で、超過分だけを時間単価20ドルで加算する。

## overtime_hours：超過時間

条件：勤務50時間から基準40時間を引く。

根拠：

得られること：10時間。

既習の根拠：差の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.overtime_hours`。

## overtime_pay：超過手当

条件：10時間を1時間20ドルで計算する。

根拠：

得られること：200ドル。

既習の根拠：単価×数量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.overtime_pay`。

## overtime_total：総収入

条件：基本給500ドルに超過手当200ドルを加える。

根拠：

得られること：700ドル。

既習の根拠：基本分と追加分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.overtime_total`。

## overtime_exists：条件の充足

条件：超過10時間、手当200ドル、総額700ドルを置く。

根拠：

得られること：勤務時間と収入条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.overtime_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.overtime_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
