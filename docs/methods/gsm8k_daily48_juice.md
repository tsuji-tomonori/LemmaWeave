# 果汁の注文人数

30人のうち2/5がレモン、残りの1/3がマンゴーを注文したとき、オレンジの人数を求める。

**取得済み固定GSM8Kの1問。**

- レモン12人を除いた18人の1/3である6人がマンゴー、残り12人がオレンジ。参照解答はマンゴーとオレンジを取り違えて最終値6としている。

## juice_lemon_remaining：レモンと残りの人数

条件：30人の2/5がレモンを注文した。

根拠：

得られること：レモンは12人、残りは18人。

既習の根拠：割合と差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.juice_lemon_remaining`。

## juice_mango_orange：マンゴーとオレンジの人数

条件：残り18人の1/3がマンゴーで、それ以外がオレンジ。

根拠：

得られること：マンゴーは6人、オレンジは12人。

既習の根拠：部分の割合と残数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.juice_mango_orange`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.juice_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
