# 1日分の薬代から14日間の総額を求める

1日9錠を14日服用し、4錠は各1.50ドル、残りは各5.50ドル高いときの総額を求める。

**取得済み固定GSM8Kの1問。**

- 金額はセントで表す。原資料の参考解答41ドルは1日分で、問題文の14日間を掛けていないため採用しない。

## pills_other_count：高価な錠剤の個数

条件：1日9錠のうち4錠が1.50ドル。

根拠：

得られること：残りは9-4=5錠。

既習の根拠：補集合の減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.pills_other_count`。

## pills_other_unit：高価な錠剤の単価

条件：1.50ドルより5.50ドル高い。

根拠：

得られること：単価は7.00ドル、すなわち700セント。

既習の根拠：加法と通貨換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.pills_other_unit`。

## pills_daily：1日分の薬代

条件：150セントの薬4錠と700セントの薬5錠。

根拠：

得られること：1日分は4×150+5×700=4100セント、41ドル。

既習の根拠：単価×個数と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.pills_daily`。

## pills_total：14日間の総額

条件：毎日同じ9錠を14日服用する。

根拠：

得られること：4100×14=57400セント、すなわち574ドル。

既習の根拠：乗法と通貨換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.pills_total`。

## pills_exists：条件の充足

条件：残り5錠、単価700セント、日額4100セント、総額57400セントと置く。

根拠：

得られること：14日を含む原文の全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908F.pills_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908F.pills_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
