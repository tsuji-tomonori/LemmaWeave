# 友人1人当たりのタンポポの綿毛

40個から家族らに渡した分を除き、残りを3人へ等分する。

**取得済み固定GSM8Kの1問。**

- 先に渡した4つの個数を合計し、残りを等分する。

## dandelion_given：先に渡した個数

条件：母3個、姉妹3個、祖母5個、犬2個へ渡す。

根拠：

得られること：合計13個を渡した。

既習の根拠：受取先別部分量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.dandelion_given`。

## dandelion_remaining：等分前の残り

条件：元の40個は渡した13個と残りの和。

根拠：

得られること：27個残る。

既習の根拠：全体から既配分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.dandelion_remaining`。

## dandelion_each：友人1人分

条件：残り27個を3人へ等分する。

根拠：

得られること：1人9個。

既習の根拠：等分の逆算 `3×1人分＝27`。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911D.dandelion_each`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911D.dandelion_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
