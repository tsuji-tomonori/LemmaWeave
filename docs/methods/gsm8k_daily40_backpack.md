# 6時間後の荷物重量

水と食料の消費量を引き、6時間後のバックパック重量を求める。

**取得済み固定GSM8Kの1問。**

- 2/3ポンドを自然数で正確に扱うため、全重量を1/3ポンド単位で表す。

## backpack_used：消費重量

条件：1時間に水2ポンド=6単位、食料2/3ポンド=2単位を6時間消費する。

根拠：

得られること：合計48単位、すなわち16ポンド減る。

既習の根拠：各時間の消費量を足して時間倍する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.backpack_used`。

## backpack_remaining：残重量の単位値

条件：初期は水60、食料30、装備60の計150単位。48単位消費する。

根拠：

得られること：残り102単位。

既習の根拠：初期量から消費量を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.backpack_remaining`。

## backpack_pounds：ポンドへ換算

条件：3単位で1ポンド、残り102単位。

根拠：

得られること：6時間後は34ポンド。

既習の根拠：102を3で割って元の単位へ戻す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915A.backpack_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915A.backpack_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
