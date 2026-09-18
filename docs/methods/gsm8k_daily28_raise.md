# 昇給後給与の差

同じ年収30000ドルから10%昇給したHanselと15%昇給したGretelの年収差を求める。

**取得済み固定GSM8Kの1問。**

- 割合を100倍の整数等式で表す。

## raise_hansel：Hanselの昇給後給与

条件：元給与30000ドル、昇給率10%。

根拠：

得られること：昇給額3000ドル、昇給後33000ドル。

既習の根拠：100×昇給額＝割合×元給与。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.raise_hansel`。

## raise_gretel：Gretelの昇給後給与

条件：元給与30000ドル、昇給率15%。

根拠：

得られること：昇給額4500ドル、昇給後34500ドル。

既習の根拠：100×昇給額＝割合×元給与。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.raise_gretel`。

## raise_difference：給与差

条件：昇給後給与が33000ドルと34500ドル。

根拠：

得られること：Gretelは1500ドル多い。

既習の根拠：大きい金額＝小さい金額＋差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.raise_difference`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.raise_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
