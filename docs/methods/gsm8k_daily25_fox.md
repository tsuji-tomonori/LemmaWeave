# キツネが120分に走る距離

時速50 kmで一定に走るキツネが120分に進む距離を求める。

**取得済み固定GSM8Kの1問。**

- 時間単位を分から時間へ換算する。

## fox_hours：時間への換算

条件：1時間は60分で、走行時間は120分。

根拠：

得られること：走行時間は2時間。

既習の根拠：時間の単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.fox_hours`。

## fox_distance：走行距離

条件：時速50 kmで2時間、一定速度で走る。

根拠：

得られること：距離は100 km。

既習の根拠：距離＝速さ×時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.fox_distance`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.fox_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
