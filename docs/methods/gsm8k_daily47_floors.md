# 建物の最上階

1階からの上下移動と最上階までの差から階数を求める。

**取得済み固定GSM8Kの1問。**

- 階番号に欠番がなく、9 floors awayを最上階との階番号差9とする追加条件。

## floors_current：現在階

条件：1階から5階上がり、2階下がり、7階上がる。

根拠：

得られること：6階、4階を経て11階にいる。

既習の根拠：階番号の加減。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.floors_current`。

## floors_top：最上階

条件：欠番なしで、11階と最上階の階番号差が9。

根拠：

得られること：最上階は11+9=20階。

既習の根拠：追加条件下の階番号差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917C.floors_top`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917C.floors_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
