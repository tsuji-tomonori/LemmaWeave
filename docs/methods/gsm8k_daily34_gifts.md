# 割引後の3人分の調理道具代を求める

子ども用調理道具一式を25%引きで姪3人に買う総額を求める。

**取得済み固定GSM8Kの1問。**

- 25%引きを定価の75%として、全品を含む一式ごとに適用する。

## gifts_knife：ナイフ代を求める

条件：ナイフは10ドルの器具セットの2倍。

根拠：

得られること：ナイフは20ドル。

既習の根拠：10×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.gifts_knife`。

## gifts_kit：一式の定価を求める

条件：ミット14ドル、エプロン16ドル、器具10ドル、ナイフ20ドルを含む。

根拠：

得られること：一式の定価は60ドル。

既習の根拠：14+16+10+20を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.gifts_kit`。

## gifts_sale_price：割引後価格を求める

条件：定価60ドルから25%引く。

根拠：

得られること：一式45ドル。

既習の根拠：定価の75%を割合の式で求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.gifts_sale_price`。

## gifts_total：3人分の総額を求める

条件：同じ一式を姪3人分買う。

根拠：

得られること：総額は135ドル。

既習の根拠：45×3を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.gifts_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.gifts_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
