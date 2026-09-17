# おやつ袋の品数

64個のプレッツェル、その4倍の金魚形クラッカー、32個のキャンディーを16袋へ等分する。

**取得済み固定GSM8Kの1問。**

- 3種類の合計を16人分へ等分する。

## snacks_goldfish：金魚形クラッカーの数

条件：プレッツェル64個の4倍。

根拠：

得られること：金魚形クラッカーは256個。

既習の根拠：倍の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.snacks_goldfish`。

## snacks_total：全品数

条件：64個、256個、32個を合計する。

根拠：

得られること：全体は352個。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.snacks_total`。

## snacks_per_bag：1袋の品数

条件：352個を16袋へ等分する。

根拠：

得られること：1袋22個。

既習の根拠：等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918A.snacks_per_bag`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918A.snacks_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
