# 植えたトマトの種の総数

MikeとTedが午前と午後に植えたトマトの種を合計する。

**取得済み固定GSM8Kの1問。**

- 午前のTedはMikeの2倍、午後のTedはMikeより20個少ない。

## tomatoes_ted_morning：Tedの午前分

条件：午前のMikeは50個、Tedはその2倍。

根拠：

得られること：Tedは午前に2×50=100個植えた。

既習の根拠：倍率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.tomatoes_ted_morning`。

## tomatoes_morning：午前の小計

条件：Mikeの50個とTedの100個を合算する。

根拠：

得られること：午前は合計150個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.tomatoes_morning`。

## tomatoes_ted_afternoon：Tedの午後分

条件：午後のMikeは60個、Tedは20個少ない。

根拠：

得られること：Tedは午後に60−20=40個植えた。

既習の根拠：差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.tomatoes_ted_afternoon`。

## tomatoes_afternoon：午後の小計

条件：Mikeの60個とTedの40個を合算する。

根拠：

得られること：午後は合計100個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.tomatoes_afternoon`。

## tomatoes_total：1日の合計

条件：午前150個と午後100個を合算する。

根拠：

得られること：答えは250個。

既習の根拠：時間帯別小計の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910E.tomatoes_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910E.tomatoes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
