# ダンスチームの人数

25人のチームから8人が辞め、13人が加入した後の人数を求める。

**取得済み固定GSM8Kの1問。**

- 退団を先に引き、加入を加える。

## dance_after_quit：退団後の人数

条件：初め25人で8人が辞める。

根拠：

得られること：退団後は17人。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.dance_after_quit`。

## dance_current：加入後の人数

条件：17人に13人が加入する。

根拠：

得られること：現在は30人。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917E.dance_current`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917E.dance_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
