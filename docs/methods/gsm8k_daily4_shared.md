# 2人への分配額を合計する

Kenは1750ドル、TonyはKenの2倍を受け取った。分配総額を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- KenとTonyの2人だけへの分配で、両者の受取額を重複なく合計する。

## shared_tony：Tonyの受取額

条件：TonyはKenの1750ドルの2倍を受け取る。

根拠：

得られること：Tonyは2×1750=3500ドル。

既習の根拠：中学校までの倍と乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.shared_tony`。

## shared_total：分配総額

条件：Kenの1750ドルとTonyの3500ドルを合計する。

根拠：

得られること：分配総額は1750+3500=5250ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.shared_total`。

## shared_exists：条件の充足

条件：Tonyを3500ドル、総額を5250ドルとする。

根拠：

得られること：元の倍と合計の関係を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.shared_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.shared_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
