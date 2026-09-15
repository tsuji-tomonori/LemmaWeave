# 曖昧な倍数表現を二つの条件付きモデルで解く

Fredが1000ドルのとき、Mikeの「10 times more」と40%増加を解釈別に求める。

**取得済み固定GSM8Kの1問。条件不足を解釈別に解答した。**

- 文字通りFredより10倍分多いなら旧給は11×1000ドルで、参照解の15400ドルとなる。
- 慣用的に10倍の額という意図なら旧給は10×1000ドルで、現在給は14000ドルとなる。

## salary_literal_old：文字通りの旧給与を求める

条件：10 times moreを、Fredの給与にその10倍分を加えた額と読む。

根拠：

得られること：旧給与は11000ドル。

既習の根拠：1000+10×1000を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.salary_literal_old`。

## salary_literal_current：文字通りの現在給を求める

条件：11000ドルが40%増加する。

根拠：

得られること：現在給は15400ドル。

既習の根拠：40%分4400ドルを11000ドルへ加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.salary_literal_current`。

## salary_common_old：慣用解釈の旧給与を求める

条件：10 times moreを10 times as much、すなわちFredの10倍の額という意図で読む。

根拠：

得られること：旧給与は10000ドル。

既習の根拠：10×1000を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.salary_common_old`。

## salary_common_current：慣用解釈の現在給を求める

条件：10000ドルが40%増加する。

根拠：

得られること：現在給は14000ドル。

既習の根拠：40%分4000ドルを10000ドルへ加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.salary_common_current`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.salary_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
