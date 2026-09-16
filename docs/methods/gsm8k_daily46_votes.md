# Marcyの得票数

Joeyの票数を基準にBarry、Marcyの順で得票数を求める。

**取得済み固定GSM8Kの1問。**

- twice as many as 3 more than Joeyを2×(Joey+3)と読む。

## votes_barry：Barryの得票

条件：Joeyは8票で、BarryはJoeyより3多い数の2倍。

根拠：

得られること：8+3=11、Barryは2×11=22票。

既習の根拠：比較差を加えてから倍にする。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.votes_barry`。

## votes_marcy：Marcyの得票

条件：MarcyはBarryの22票の3倍。

根拠：

得られること：3×22=66票。

既習の根拠：倍数関係の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.votes_marcy`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917B.votes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
