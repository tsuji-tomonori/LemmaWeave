# 2年間の単利後の預金額

Daniellaの口座が400ドルで、Ariellaの口座は200ドル多く、年10%の単利が付くとき、2年後のAriellaの口座残高を求める。

**取得済み固定GSM8Kの1問。**

- 単利では毎年の利息を元金600ドルの10%として2年分加える。

## interest_principal：Ariellaの元金

条件：Daniellaの400ドルより200ドル多い。

根拠：

得られること：元金は400+200=600ドル。

既習の根拠：差を加える加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.interest_principal`。

## interest_annual：1年分の単利

条件：元金600ドルに年率10%の単利。

根拠：

得られること：1年の利息は600×10/100=60ドル。

既習の根拠：百分率による単利。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.interest_annual`。

## interest_total：2年分の利息

条件：単利の年額60ドルが2年間付く。

根拠：

得られること：利息合計は2×60=120ドル。

既習の根拠：単利は元金を固定して期間倍する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.interest_total`。

## interest_final：2年後の残高

条件：元金600ドルと利息120ドル。

根拠：

得られること：2年後は600+120=720ドル。

既習の根拠：元金と利息の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909E.interest_final`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909E.interest_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
