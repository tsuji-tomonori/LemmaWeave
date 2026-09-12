# 宝くじの手取り額

賞金50ドルから20%の税と5ドルの処理手数料を引いた手取りを求める。

**取得済み固定GSM8Kの1問。**


## lottery_tax：税額

条件：賞金50ドルへ税率20%を適用する。

根拠：

得られること：税額は50×20/100=10ドル。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.lottery_tax`。

## lottery_after_tax：税引後

条件：50ドルから税10ドルを払う。

根拠：

得られること：税引後は40ドル。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.lottery_after_tax`。

## lottery_take_home：手取り

条件：税引後40ドルから手数料5ドルを払う。

根拠：

得られること：手取りは35ドル。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.lottery_take_home`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909D.lottery_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
