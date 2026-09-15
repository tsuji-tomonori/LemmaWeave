# 下ろすときに感じる重量

30ポンドのプレート10枚を20%重くする機械で、下降時の体感重量を求める。

**取得済み固定GSM8Kの1問。**

- 20%増分を基礎重量の百分率として加える。

## weight_base：プレートの基礎重量

条件：30ポンドのプレートが10枚。

根拠：

得られること：基礎重量は300ポンド。

既習の根拠：枚数×1枚の重量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.weight_base`。

## weight_extra：20%の増分

条件：基礎重量300ポンドの20%を加える。

根拠：

得られること：増分は60ポンド。

既習の根拠：百分率の関係 `100×増分＝20×基礎重量`。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.weight_extra`。

## weight_lowered：下降時の体感重量

条件：基礎300ポンドに増分60ポンドを加える。

根拠：

得られること：360ポンドに感じる。

既習の根拠：元の量と増分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.weight_lowered`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.weight_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
