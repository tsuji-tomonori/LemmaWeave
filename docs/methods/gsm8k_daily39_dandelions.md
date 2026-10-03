# タンポポの等分

40個から3、3、5、2個を贈り、残りを3人に等分する。

**取得済み固定GSM8Kの1問。**

- 各贈与は別の個体。

## dandelions_remaining：残数

条件：40個から計13個を贈る。

根拠：

得られること：27個残る。

既習の根拠：初期量=贈与量+残量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.dandelions_remaining`。

## dandelions_each：1人分

条件：27個を3人へ等分。

根拠：

得られること：1人9個。

既習の根拠：総量=人数×1人分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914E.dandelions_each`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914E.dandelions_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
