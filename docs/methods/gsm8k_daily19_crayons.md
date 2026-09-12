# 条件不足の未使用クレヨン数

各24本の5箱について、2箱は5/8未使用、別の2箱は2/3使用、最後の箱は全部は使われていない。

**取得済み固定GSM8Kの1問。条件不足を範囲と反例まで解答。**

- 最後の箱の未使用数は1～24で一意でない。参照解70は最後の箱を全く使っていない場合。

## crayons_first_each：最初の箱1箱分

条件：24本の5/8が未使用。

根拠：

得られること：1箱15本が未使用。

既習の根拠：分数割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.crayons_first_each`。

## crayons_first_total：最初の2箱

条件：15本ずつの箱が2箱。

根拠：

得られること：未使用は30本。

既習の根拠：同数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.crayons_first_total`。

## crayons_other_used：別の箱の使用数

条件：24本の2/3を使用。

根拠：

得られること：1箱16本を使用。

既習の根拠：分数割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.crayons_other_used`。

## crayons_other_unused：別の箱の未使用数

条件：24本から使用16本を引く。

根拠：

得られること：1箱8本が未使用。

既習の根拠：全体から一部を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.crayons_other_unused`。

## crayons_other_total：別の2箱

条件：8本ずつの箱が2箱。

根拠：

得られること：未使用は16本。

既習の根拠：同数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.crayons_other_total`。

## crayons_range：可能範囲

条件：最初の4箱で46本、最後の箱は1～24本未使用。

根拠：

得られること：合計は47～70本。

既習の根拠：整数範囲の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.crayons_range`。

## crayons_last_all_unused：追加条件付き解

条件：最後の箱を全く使っておらず24本すべて未使用。

根拠：

得られること：この追加条件なら70本。

既習の根拠：条件付きの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.crayons_last_all_unused`。

## crayons_two_models：一意性の反例

条件：最後の箱の未使用が1本または24本のどちらも原文条件を満たす。

根拠：

得られること：47本と70本の二例があり、原文だけでは一意に決まらない。

既習の根拠：具体例による非一意性証明。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.crayons_two_models`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910C.crayons_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
