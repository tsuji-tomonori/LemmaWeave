# 半分ずつの収入差を求める

60ドルの半分をLisaが稼ぎ、TommyはLisaの半分を稼いだ。両者の差を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- Jackの取り分は問われず、LisaとTommyの明示された関係だけで差を求める。

## earnings_lisa：Lisaの収入

条件：Lisaは全60ドルの半分を稼ぐ。

根拠：

得られること：Lisaは60÷2=30ドル。

既習の根拠：中学校までの分数と除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earnings_lisa`。

## earnings_tommy：Tommyの収入

条件：TommyはLisaの30ドルの半分を稼ぐ。

根拠：

得られること：Tommyは30÷2=15ドル。

既習の根拠：中学校までの分数と除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earnings_tommy`。

## earnings_difference：収入差

条件：Lisaの30ドルからTommyの15ドルを引く。

根拠：

得られること：LisaはTommyより15ドル多い。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earnings_difference`。

## earnings_exists：条件の充足

条件：Lisa 30ドル、Tommy 15ドル、差15ドル。

根拠：

得られること：半分と差の全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907D.earnings_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907D.earnings_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
