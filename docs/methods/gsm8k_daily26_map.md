# 地図の縮尺から求める実距離

地図の1/4インチが実際の8マイルを表すとき、地図上3 3/8インチの実距離を求める。

**取得済み固定GSM8Kの1問。**

- 分数を8分の1インチ単位へ統一し、縮尺の比例条件を整数式にした。

## map_eighths：地図上の長さの単位統一

条件：3インチは24/8インチで、さらに3/8インチある。

根拠：

得られること：地図上の長さは27個の1/8インチ。

既習の根拠：帯分数の仮分数化。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.map_eighths`。

## map_actual：縮尺の適用

条件：1/4インチ、すなわち2個の1/8インチが8マイルを表し、地図上は27個の1/8インチ。

根拠：

得られること：実距離は108マイル。

既習の根拠：対応する量の比例式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.map_actual`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.map_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
