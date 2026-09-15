# 倍数関係から円周率の暗記桁数を逆算する

MinaはCarlosの6倍で24桁、SamはCarlosより6桁多い。Samの桁数を求める。

**取得済み固定GSM8Kの1問。**

- 桁数を自然数とし、6×Carlos=24を解く。

## digits_carlos：Carlosの桁数

条件：Carlosの6倍が24桁。

根拠：

得られること：Carlosは4桁。

既習の根拠：中学校までの一次方程式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.digits_carlos`。

## digits_sam：Samの桁数

条件：SamはCarlosより6桁多い。

根拠：

得られること：4+6=10桁。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.digits_sam`。

## digits_exists：条件の充足

条件：Carlosを4桁、Samを10桁と置く。

根拠：

得られること：倍数関係と差の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.digits_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.digits_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
