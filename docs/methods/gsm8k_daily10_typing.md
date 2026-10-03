# 当日の純増分から開始時の文数を逆算する

毎分6文を20分、15分、18分入力し40文削除、最終536文のとき開始時の文数を求める。

**取得済み固定GSM8Kの1問。**

- 15 minutes longerは比較級ではなく、休憩後にさらに15分入力したという文脈上の継続時間。

## typing_gross：当日の入力総数

条件：20+15+18=53分を毎分6文で入力。

根拠：

得られること：318文を入力した。

既習の根拠：加法と乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.typing_gross`。

## typing_net：当日の純増

条件：入力318文から誤り40文を削除。

根拠：

得られること：純増は278文。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.typing_net`。

## typing_start：開始時の文数

条件：開始時文数と純増278文の和が536文。

根拠：

得られること：開始時は258文。

既習の根拠：一次方程式の逆算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.typing_start`。

## typing_exists：条件の充足

条件：入力318、純増278、開始258と置く。

根拠：

得られること：入力時間・削除・最終536文の全条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.typing_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.typing_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
