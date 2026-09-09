# 手元に残るマンゴーの個数

60kgのマンゴーから市場に20kg、残りの半分を地域に売り、1kgに8個あるとき手元の個数を求める。

**取得済み固定GSM8Kの1問。**

- 市場販売後の残り40kgの半分を地域へ売る。

## mango_after_market：市場販売後

条件：収穫60kgから市場に20kg売る。

根拠：

得られること：60-20=40kg残る。

既習の根拠：全体から販売量を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.mango_after_market`。

## mango_community：地域への販売量

条件：残り40kgの半分を売る。

根拠：

得られること：地域へ20kg売る。

既習の根拠：半分は2等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.mango_community`。

## mango_remaining：手元の重量

条件：40kgから20kgを地域へ売る。

根拠：

得られること：20kg残る。

既習の根拠：差の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.mango_remaining`。

## mango_count：手元の個数

条件：残り20kgで1kg当たり8個。

根拠：

得られること：20×8=160個。

既習の根拠：単位量と重量の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.mango_count`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.mango_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
