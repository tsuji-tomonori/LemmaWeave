# 残りの食数からカロリーを求める

16食分のチーズから5食分を食べた後に残る総カロリーを求める。

**取得済み固定GSM8Kの1問。**

- 各食分は一様に110カロリーと読む。

## cheese_remaining：残りの食数を求める

条件：全16食分のうち5食分を食べた。

根拠：

得られること：11食分が残る。

既習の根拠：食べた数＋残数＝全数の自然数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.cheese_remaining`。

## cheese_calories：残りのカロリーを求める

条件：残り11食分で、1食分は110カロリー。

根拠：

得られること：1210カロリーが残る。

既習の根拠：食数×1食当たりカロリーを計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.cheese_calories`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.cheese_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
