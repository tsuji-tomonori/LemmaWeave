# 共有数から1箱の鉛筆数を逆算する

同数入り10箱から10本を残し、5人へ各8本配った。1箱の本数を求める。

**取得済み固定GSM8Kの1問。**

- 友人へ配った本数と手元に残した10本を足して元の総数を復元し、10箱で等分する。

## pencils_shared：共有した本数

条件：5人へ各8本配る。

根拠：

得られること：40本を共有。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.pencils_shared`。

## pencils_total：元の総数

条件：共有40本に手元の10本を戻す。

根拠：

得られること：総数50本。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.pencils_total`。

## pencils_each：1箱の本数

条件：50本が同数入り10箱に入っていた。

根拠：

得られること：50÷10=5本。

既習の根拠：中学校までの除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.pencils_each`。

## pencils_exists：条件の充足

条件：共有40本、総数50本、1箱5本と置く。

根拠：

得られること：共有と等箱数の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.pencils_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.pencils_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
