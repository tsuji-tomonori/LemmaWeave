# 友人へ分けた鉛筆と残り

Mannyへ10本、NiloへMannyより10本多く渡し、50本から渡した合計を除く。

**取得済み固定GSM8Kの1問。**

- ten more pencils to Nilo than he gave to MannyをMannyの10本より10本多いと読む。

## pencils_nilo：Niloへの本数

条件：Mannyへ10本、Niloへそれより10本多く渡す。

根拠：

得られること：Niloへ20本渡す。

既習の根拠：比較対象の量に差を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.pencils_nilo`。

## pencils_given：渡した合計

条件：Mannyへ10本、Niloへ20本。

根拠：

得られること：渡した合計は30本。

既習の根拠：二人への本数を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.pencils_given`。

## pencils_kept：残した本数

条件：全50本のうち30本を渡した。

根拠：

得られること：Kenが残したのは20本。

既習の根拠：全体=渡した分+残した分を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.pencils_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.pencils_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
