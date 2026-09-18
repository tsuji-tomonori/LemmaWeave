# 同額の子犬2匹の単価

5匹で800ドル、うち3匹が各150ドルのとき、同額の残り2匹の1匹当たり価格を求める。

**取得済み固定GSM8Kの1問。**

- 残り2匹が同額という条件を積の等式にする。

## puppy_sale_cost：特売3匹の代金

条件：3匹が各150ドル。

根拠：

得られること：特売分は450ドル。

既習の根拠：合計＝個数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.puppy_sale_cost`。

## puppy_other_cost：残り2匹の合計

条件：総額800ドルのうち450ドルが特売分。

根拠：

得られること：残り2匹は合計350ドル。

既習の根拠：総額＝既知部分＋残額。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.puppy_other_cost`。

## puppy_each：1匹当たり価格

条件：同額の2匹が合計350ドル。

根拠：

得られること：各175ドル。

既習の根拠：合計＝個数×同一単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912B.puppy_each`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912B.puppy_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
