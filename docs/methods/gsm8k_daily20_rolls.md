# 夕食会に残るロールパン

16人の半数ずつが1.5個と0.5個を食べるとき、40個から残る数を求める。

**取得済み固定GSM8Kの1問。**

- 各群の人数は8人。分数は式の両辺を2倍して整数で表す。

## rolls_half_people：各群の人数

条件：16人を同数の二群に分ける。

根拠：

得られること：各群は8人。

既習の根拠：偶数の二等分。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.rolls_half_people`。

## rolls_first：第1群の消費

条件：8人が1人1と1/2個ずつ食べる。分母2を払うと消費数の2倍は8×3。

根拠：

得られること：12個食べる。

既習の根拠：分数と人数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.rolls_first`。

## rolls_second：第2群の消費

条件：8人が1人1/2個ずつ食べる。

根拠：

得られること：4個食べる。

既習の根拠：分数と人数の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.rolls_second`。

## rolls_eaten：全消費数

条件：二群の12個と4個を合算する。

根拠：

得られること：16個食べる。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.rolls_eaten`。

## rolls_left：残数

条件：用意した40個から16個を引く。

根拠：

得られること：答えは24個。

既習の根拠：全体から消費分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910D.rolls_left`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910D.rolls_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
