# 牛乳とシリアルの割引総額

牛乳3ガロンとシリアル5箱の割引による節約額を求める。

**取得済み固定GSM8Kの1問。**

- シリアルの1ドル引きは各箱に適用する。

## discounts_milk_each：牛乳1ガロンの節約

条件：通常3ドルが2ドル。

根拠：

得られること：1ガロンにつき3-2=1ドル節約。

既習の根拠：通常価格と販売価格の差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.discounts_milk_each`。

## discounts_milk_total：牛乳3ガロンの節約

条件：1ガロン1ドル引きで3ガロン。

根拠：

得られること：牛乳では1×3=3ドル節約。

既習の根拠：単位節約額と個数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.discounts_milk_total`。

## discounts_cereal_total：シリアル5箱の節約

条件：1箱1ドル引きで5箱。

根拠：

得られること：シリアルでは1×5=5ドル節約。

既習の根拠：単位節約額と個数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.discounts_cereal_total`。

## discounts_total：節約総額

条件：牛乳で3ドル、シリアルで5ドル節約。

根拠：

得られること：合計3+5=8ドル節約。

既習の根拠：品目別節約額の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.discounts_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.discounts_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
