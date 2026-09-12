# 招待客と主催者の旗をまとめ買いする費用を求める

招待客58人と主催者2人の旗を、5本1ドルで買う費用を求める。

**取得済み固定GSM8Kの1問。**

- JayとGloria自身の2本も必要数へ加え、60本が5本単位で割り切れることを使う。

## flags_guests：招待客数を求める

条件：Jayが22人、Gloriaが36人を招く。

根拠：

得られること：招待客は58人。

既習の根拠：22+36を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.flags_guests`。

## flags_total：必要な旗の本数を求める

条件：58人の招待客に加え、主催者2人も各1本必要。

根拠：

得られること：必要数は60本。

既習の根拠：58+2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.flags_total`。

## flags_cost：購入費用を求める

条件：60本を5本1ドルで買う。

根拠：

得られること：費用は12ドル。

既習の根拠：60=5×12となる組数を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.flags_cost`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.flags_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
