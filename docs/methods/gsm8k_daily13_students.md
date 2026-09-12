# 欠席・教室・食堂の人数

40人の10分の1が欠席し、出席者の4分の3が教室、残りが食堂にいる。食堂の人数を求める。

**取得済み固定GSM8Kの1問。**

- 教室の4分の3は出席者を母数とする。

## students_absent：欠席人数

条件：40人の10分の1が欠席。

根拠：

得られること：欠席は4人。

既習の根拠：割合の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.students_absent`。

## students_present：出席人数

条件：40人から欠席4人を除く。

根拠：

得られること：出席は36人。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.students_present`。

## students_classroom：教室の人数

条件：出席36人の4分の3が教室。

根拠：

得られること：教室は27人。

既習の根拠：割合の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.students_classroom`。

## students_canteen：食堂の人数

条件：出席36人のうち教室27人以外が食堂。

根拠：

得られること：食堂は9人。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.students_canteen`。

## students_exists：条件の充足

条件：全体40、欠席4、出席36、教室27、食堂9と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909B.students_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909B.students_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
