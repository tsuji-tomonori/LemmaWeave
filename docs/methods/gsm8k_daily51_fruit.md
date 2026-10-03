# 果物を渡した後の個数

梨10個、オレンジ20個、梨の2倍のりんごから、各種類2個ずつ渡した残りを求める。

**取得済み固定GSM8Kの1問。**

- りんごは梨の2倍で20個。3種類から2個ずつ、合計6個を渡す。

## fruit_apples：りんごの個数

条件：りんごは梨10個の2倍。

根拠：

得られること：りんごは20個。

既習の根拠：倍率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.fruit_apples`。

## fruit_total：渡す前の総数

条件：梨10個、オレンジ20個、りんご20個を合計する。

根拠：

得られること：全部で50個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.fruit_total`。

## fruit_given：渡した個数

条件：3種類を各2個ずつ渡す。

根拠：

得られること：合計6個を渡す。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.fruit_given`。

## fruit_remaining：残り

条件：50個から6個を渡す。

根拠：

得られること：44個残る。

既習の根拠：差の関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.fruit_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.fruit_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
