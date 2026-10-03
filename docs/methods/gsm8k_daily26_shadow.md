# 6時間後の影の長さ

正午に0フィートで毎時5フィート伸びる影の、6時間後の長さをインチで求める。

**取得済み固定GSM8Kの1問。**

- 正午からの経過時間に一定の増加率を掛け、1フィート＝12インチで換算する。

## shadow_feet：フィートでの長さ

条件：正午に0から始まり、6時間にわたり毎時5フィートずつ伸びる。

根拠：

得られること：影は30フィート。

既習の根拠：増加量＝時間×一定の増加率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.shadow_feet`。

## shadow_inches：インチへの換算

条件：影は30フィートで、1フィートは12インチ。

根拠：

得られること：影は360インチ。

既習の根拠：長さの単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.shadow_inches`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.shadow_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
