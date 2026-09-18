# 曜日ごとの増減後の野球カード

月曜に30枚、火曜に半分を失い、水曜に12枚買い、木曜に火曜時点の3分の1を買うとき、木曜の枚数を求める。

**取得済み固定GSM8Kの1問。**

- 木曜に買う量の基準は水曜ではなく火曜時点の15枚。

## cards_tuesday：火曜の枚数

条件：月曜30枚の半分を失う。

根拠：

得られること：火曜は15枚。

既習の根拠：半分を失うと残りも半分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.cards_tuesday`。

## cards_wednesday：水曜の枚数

条件：火曜の15枚に12枚を買い足す。

根拠：

得られること：水曜は27枚。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.cards_wednesday`。

## cards_purchase：木曜の購入枚数

条件：火曜時点15枚の3分の1を買う。

根拠：

得られること：5枚買う。

既習の根拠：3等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.cards_purchase`。

## cards_final：木曜の所持枚数

条件：水曜の27枚に木曜購入の5枚を加える。

根拠：

得られること：木曜は32枚。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.cards_final`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910A.cards_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
