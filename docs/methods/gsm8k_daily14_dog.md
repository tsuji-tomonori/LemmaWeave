# 犬の世話に使う時間

30分を1日2回と、1時間の5分の1を合計して分で表す。

**取得済み固定GSM8Kの1問。**

- 半時間は30分、1時間は60分として単位を分に統一する。

## dog_walk：散歩と遊び

条件：30分を1日2回。

根拠：

得られること：30×2=60分。

既習の根拠：時間と回数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.dog_walk`。

## dog_feed：餌やり

条件：1時間60分の5分の1。

根拠：

得られること：60÷5=12分。

既習の根拠：時間単位換算と分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.dog_feed`。

## dog_total：一日の合計

条件：散歩等60分と餌やり12分。

根拠：

得られること：合計60+12=72分。

既習の根拠：用途別時間の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.dog_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.dog_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
