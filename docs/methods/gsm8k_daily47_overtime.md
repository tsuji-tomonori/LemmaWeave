# 残業を含む勤務時間

通常40時間と1.5倍の残業賃金から総勤務時間を求める。

**取得済み固定GSM8Kの1問。**

- 給与696ドルは税引前で、40時間超だけに1.5倍を適用する。

## overtime_parts：通常賃金と残業賃金

条件：通常時給12ドルを40時間、残業時給はその1.5倍。

根拠：

得られること：通常分480ドル、残業時給18ドル、残業分216ドル。

既習の根拠：時間×時給と給与の分解。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.overtime_parts`。

## overtime_hours：総勤務時間

条件：残業分216ドルを時給18ドルで得た。

根拠：

得られること：残業12時間、総勤務時間52時間。

既習の根拠：金額÷時給と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.overtime_hours`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.overtime_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
