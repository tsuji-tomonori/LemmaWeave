# 6人目無料のアイス個数

1個2ドル、6人目ごとに無料で、売上100ドルのときの無料個数を検討する。

**取得済み固定GSM8Kの1問。**

- 売上から有料50個は確定するが、来客の終了位置がないため無料個数は一意でない。

## ice_paid：有料販売数

条件：1個2ドルで売上100ドル。

根拠：

得られること：有料販売は50個。

既習の根拠：包含除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.ice_paid`。

## ice_ten_free：60人目まで来た場合

条件：客が60人まで来て、各6人目へ無料1個を渡す。

根拠：

得られること：無料10個、有料50個、売上100ドルとなる。

既習の根拠：6人組ごとの数え上げ。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.ice_ten_free`。

## ice_nine_free：59人で終わる反例

条件：客が59人で終わり、各6人目へ無料1個を渡す。

根拠：

得られること：無料9個でも有料50個、売上100ドルとなる。

既習の根拠：商と余りによる数え上げ。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.ice_nine_free`。

## ice_distinct：一意性の否定

条件：無料10個と9個の両モデルが原文の売上条件と両立する。

根拠：

得られること：原文だけでは無料個数を一意に決められない。60人目まで来た追加条件なら10個。

既習の根拠：異なる具体例による反例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.ice_distinct`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.ice_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
