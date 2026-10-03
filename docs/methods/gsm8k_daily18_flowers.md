# 花の割引購入後のお釣り

パンジー5株各2.50ドル、アジサイ1株12.50ドル、ペチュニア5株各1ドルを全品10%引きで買い、50ドル払うときのお釣りを求める。

**取得済み固定GSM8Kの1問。**

- 金額はセントで形式化し、全品小計に10%割引を適用する。

## flowers_pansies：パンジー代

条件：5株を各250セントで買う。

根拠：

得られること：1250セント。

既習の根拠：単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.flowers_pansies`。

## flowers_petunias：ペチュニア代

条件：5株を各100セントで買う。

根拠：

得られること：500セント。

既習の根拠：単価×個数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.flowers_petunias`。

## flowers_subtotal：割引前小計

条件：パンジー1250、アジサイ1250、ペチュニア500セント。

根拠：

得られること：小計3000セント。

既習の根拠：品目別代金の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.flowers_subtotal`。

## flowers_discount：割引額

条件：小計3000セントの10%。

根拠：

得られること：300セント引き。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.flowers_discount`。

## flowers_total：支払額

条件：3000セントから300セントを引く。

根拠：

得られること：2700セント。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.flowers_total`。

## flowers_change：お釣り

条件：5000セントを払い、代金は2700セント。

根拠：

得られること：2300セント、すなわち23ドル。

既習の根拠：受取額-代金。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910B.flowers_change`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910B.flowers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
