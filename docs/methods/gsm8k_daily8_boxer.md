# 一定の月間減量から試合日の体重を求める

試合4か月前に97kgで毎月3kg減量するとき、試合日の体重を求める。

**取得済み固定GSM8Kの1問。**

- 月間減量が4か月とも一定であると原文どおり扱う。

## boxer_loss：4か月の減量

条件：毎月3kgを4か月続ける。

根拠：

得られること：12kg減る。

既習の根拠：一定量×期間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.boxer_loss`。

## boxer_final：試合日の体重

条件：97kgから12kgを引く。

根拠：

得られること：85kg。

既習の根拠：初期量−変化量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.boxer_final`。

## boxer_exists：条件の充足

条件：減量12kg、最終85kgを置く。

根拠：

得られること：一定減量と体重差の条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908C.boxer_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908C.boxer_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
