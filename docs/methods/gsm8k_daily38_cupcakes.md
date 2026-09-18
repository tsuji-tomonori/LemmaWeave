# 配った後に食べたカップケーキの残数を求める

60個の4/5を配り、残った1/5から3個食べた後の残数を求める。

**取得済み固定GSM8Kの1問。**

- 配った後の残りは元の60個の1/5。

## cupcakes_remaining：配った後の残数を求める

条件：60個の4/5を配るので1/5が残る。

根拠：

得られること：残りは60÷5=12個。

既習の根拠：全体を5等分した1つ分が1/5。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.cupcakes_remaining`。

## cupcakes_left：食べた後の残数を求める

条件：残った12個から3個食べる。

根拠：

得られること：手元には12-3=9個残る。

既習の根拠：取り去った個数を元の残数から引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.cupcakes_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914D.cupcakes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
