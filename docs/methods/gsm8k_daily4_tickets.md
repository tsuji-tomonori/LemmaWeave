# 10枚を超えた券だけに割引を適用する

1枚40ドルの券を12枚買い、10枚を超える各券に5%割引を受ける。支払総額を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 5%割引は購入全12枚ではなく、10枚を超えた2枚だけに適用する。

## tickets_discounted：割引対象枚数

条件：12枚のうち10枚を超えた券が対象。

根拠：

得られること：割引対象は12-10=2枚。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tickets_discounted`。

## tickets_discount：1枚の割引額

条件：40ドルの5%を引く。

根拠：

得られること：割引額は40×5/100=2ドル。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tickets_discount`。

## tickets_discounted_cost：割引2枚の代金

条件：2枚を1枚40-2=38ドルで買う。

根拠：

得られること：割引券の代金は2×38=76ドル。

既習の根拠：中学校までの四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tickets_discounted_cost`。

## tickets_full_cost：通常10枚の代金

条件：割引対象外10枚を各40ドルで買う。

根拠：

得られること：通常券の代金は10×40=400ドル。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tickets_full_cost`。

## tickets_total：支払総額

条件：割引券76ドルと通常券400ドルを合計する。

根拠：

得られること：支払総額は476ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tickets_total`。

## tickets_exists：条件の充足

条件：対象2枚、割引2ドル、割引代76ドル、通常代400ドル、総額476ドル。

根拠：

得られること：割引規則と購入枚数の全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.tickets_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.tickets_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
