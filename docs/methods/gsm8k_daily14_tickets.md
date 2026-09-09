# 遊園地の釣銭

大人2人と12歳未満の子ども2人の入場料を500ドルから引き、釣銭を求める。

**取得済み固定GSM8Kの1問。**

- 6歳と10歳はいずれも12歳未満なので各5ドル引き。coupleは大人2人と読む。

## tickets_child_price：子ども1人の料金

条件：通常109ドルで、12歳未満は5ドル引き。

根拠：

得られること：子ども1人は109-5=104ドル。

既習の根拠：差による割引額の計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.tickets_child_price`。

## tickets_child_cost：子ども2人の料金

条件：対象の子どもは2人で、1人104ドル。

根拠：

得られること：子ども分は2×104=208ドル。

既習の根拠：同額の人数分を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.tickets_child_cost`。

## tickets_adult_cost：大人2人の料金

条件：大人は2人で通常料金109ドル。

根拠：

得られること：大人分は2×109=218ドル。

既習の根拠：単価と人数の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.tickets_adult_cost`。

## tickets_total：家族の合計料金

条件：子ども分208ドルと大人分218ドルを支払う。

根拠：

得られること：合計は208+218=426ドル。

既習の根拠：部分代金の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.tickets_total`。

## tickets_change：釣銭

条件：500ドルを渡し、料金は426ドル。

根拠：

得られること：釣銭は500-426=74ドル。

既習の根拠：支払額から代金を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909C.tickets_change`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909C.tickets_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
