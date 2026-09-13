# 部屋数と清掃時間から総報酬を求める

4階各10室を1室6時間で清掃し、時給15ドルで得る総額を求める。

**取得済み固定GSM8Kの1問。**

- 全室が同じ6時間を要し、全作業が時給対象である。

## cleaning_rooms：部屋数を求める

条件：4階の各階に10室ある。

根拠：

得られること：全部で40室ある。

既習の根拠：階数と各階の室数を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.cleaning_rooms`。

## cleaning_hours：清掃時間を求める

条件：40室を1室6時間で清掃する。

根拠：

得られること：全作業は240時間。

既習の根拠：同じ所要時間の40件分として40×6を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.cleaning_hours`。

## cleaning_pay：総報酬を求める

条件：240時間すべてに時給15ドルが支払われる。

根拠：

得られること：総報酬は3600ドル。

既習の根拠：時給×労働時間を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.cleaning_pay`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.cleaning_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
