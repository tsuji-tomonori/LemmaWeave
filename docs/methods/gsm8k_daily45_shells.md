# 貝殻の均等分配

3人が集めた貝殻を合わせ、到着した友人2人へ均等に分ける。

**取得済み固定GSM8Kの1問。**

- 集めた3人ではなく、新たに到着した友人2人だけを分配先とする。

## shells_total：貝殻の総数

条件：Jillian、Savannah、Claytonが順に29個、17個、8個を集めた。

根拠：

得られること：合わせると29+17+8=54個。

既習の根拠：三つの個数の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.shells_total`。

## shells_each：友人1人当たり

条件：54個を到着した友人2人に均等に配る。

根拠：

得られること：1人当たり54÷2=27個。

既習の根拠：均等分配の除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917A.shells_each`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917A.shells_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
