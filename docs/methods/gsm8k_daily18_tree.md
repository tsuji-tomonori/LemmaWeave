# 年10%複利成長した木の伸び

2017年末に100mの木が、毎年その前年の高さの10%ずつ伸びるとき、2019年末までに伸びた長さを求める。

**取得済み固定GSM8Kの1問。**

- 各年の10%は前年の更新後の高さを基準とする複利型の成長。

## tree_growth_2018：2018年の伸び

条件：2017年末100mの10%。

根拠：

得られること：10m伸びる。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.tree_growth_2018`。

## tree_height_2018：2018年末の高さ

条件：100mに10mを加える。

根拠：

得られること：110m。

既習の根拠：基準量と増加量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.tree_height_2018`。

## tree_growth_2019：2019年の伸び

条件：2018年末110mの10%。

根拠：

得られること：11m伸びる。

既習の根拠：前年の高さを基準とする百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.tree_growth_2019`。

## tree_height_2019：2019年末の高さ

条件：110mに11mを加える。

根拠：

得られること：121m。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.tree_height_2019`。

## tree_total_growth：2年間の伸び

条件：2019年末121mと2017年末100mの差。

根拠：

得られること：21m伸びた。

既習の根拠：終値-初値。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.tree_total_growth`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.tree_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
