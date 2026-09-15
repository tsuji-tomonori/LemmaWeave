# 予算の保存から靴代を求める

予算200ドルで、シャツ30、パンツ46、上着38、靴下11、ベルト18ドルと靴を購入し、16ドル残った。靴はいくらか。

**収集済みGSM8Kの1問をLLMが個別に解答。新規収集には数えない。**

- 靴代は非負。購入列挙にない税や追加費用を導入せず、原題が記す支出と残金で予算を分割する。
- 41ドルを代入して確かめるだけでなく、任意の靴代について原題条件と41ドルが同値であることを証明する。

## clothes_known：既知の支出を合計する

条件：靴以外は30、46、38、11、18ドル。残金16ドル。

根拠：

得られること：既知の支出は143ドル。143+靴代+16=200。

既習の根拠：加法と、支出+残金=予算という保存関係。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.clothes_known`。

## clothes_spent：支出全体を求める

条件：予算から残金16ドルを除く。

根拠：

得られること：既知143ドル+靴代=200−16=184ドル。

既習の根拠：等式の両辺から同じ数を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.clothes_spent`。

## clothes_shoes：支出から既知の部分を除く

条件：支出184ドルは既知143ドルと靴代の和。

根拠：[保存式から残量を求める](remaining_balance.md)

得られること：靴代=184−143=41ドル。

既習の根拠：一次方程式と残量の保存。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.clothes_shoes`。

## clothes_exists：非負性と元の予算を確認する

条件：靴代41ドルを取る。

根拠：

得られること：41≥0、143+41+16=200。従って求める靴代はちょうど41ドル。

既習の根拠：非負数、整数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KNextSteps.clothes_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KNextSteps.clothes_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
