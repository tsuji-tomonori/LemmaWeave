# 7週間のリンゴ週平均

2週、次の3週、最後の2週に食べたリンゴを合算し、7週間の週平均を求める。

**取得済み固定GSM8Kの1問。**

- 次の3週間では期間全体で最初の2週間と同数の14個を食べる。

## apples_first_days：最初の期間の日数

条件：2週間で1週7日。

根拠：

得られること：14日。

既習の根拠：週から日への換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.apples_first_days`。

## apples_first：最初の2週間

条件：14日間に1日1個食べる。

根拠：

得られること：14個食べる。

既習の根拠：日数と日量の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.apples_first`。

## apples_next：次の3週間

条件：この3週間の合計は最初の2週間の合計と同じ。

根拠：

得られること：14個食べる。

既習の根拠：同数条件。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.apples_next`。

## apples_last_days：最後の期間の日数

条件：最後の2週間で1週7日。

根拠：

得られること：14日。

既習の根拠：週から日への換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.apples_last_days`。

## apples_last：最後の2週間

条件：14日間に1日3個食べる。

根拠：

得られること：42個食べる。

既習の根拠：日数と日量の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.apples_last`。

## apples_total：7週間の合計

条件：14個、14個、42個を合算する。

根拠：

得られること：合計70個。

既習の根拠：期間別合計の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.apples_total`。

## apples_average：週平均

条件：70個を全7週間で等分する。

根拠：

得られること：答えは週10個。

既習の根拠：平均=総数÷期間数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.apples_average`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.apples_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
