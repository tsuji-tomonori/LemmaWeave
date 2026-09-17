# 1つ買うと1つ無料のステーキ代

1ポンド15ドルのステーキ20ポンドを、1つ買うと同量が無料になる条件で買う代金を求める。

**取得済み固定GSM8Kの1問。**

- 販売単位の記載がないため、参考解答どおり同量のポンドが無料になる完全な組として解釈する。

## steak_paid：有料の重量

条件：買った量と同量が無料で、20ポンドは完全な組になる。

根拠：

得られること：代金を払うのは10ポンド分。

既習の根拠：2等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.steak_paid`。

## steak_cost：代金

条件：10ポンド分を1ポンド15ドルで買う。

根拠：

得られること：代金は150ドル。

既習の根拠：金額＝重量×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0918B.steak_cost`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0918B.steak_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
