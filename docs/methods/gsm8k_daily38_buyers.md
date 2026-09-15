# 3日間の重複しない買い物客を数える

一昨日50人、昨日はその半分、今日は昨日より40人多く、3日間に重複訪問がないとき、訪問者総数を求める。

**取得済み固定GSM8Kの1問。**

- 重複訪問者がいないため日別人数の和が3日間の異なる訪問者数になる。

## buyers_yesterday：昨日の人数を求める

条件：一昨日は50人で、昨日はその半分。

根拠：

得られること：昨日は50÷2=25人。

既習の根拠：半分の量は2倍すると元の量になる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.buyers_yesterday`。

## buyers_today：今日の人数を求める

条件：今日は昨日の25人より40人多い。

根拠：

得られること：今日は25+40=65人。

既習の根拠：『より40多い』は40を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.buyers_today`。

## buyers_total：重複しない3日分を合計する

条件：一昨日50人、昨日25人、今日65人で、同じ人は複数日に訪れていない。

根拠：

得られること：異なる訪問者の総数は50+25+65=140人。

既習の根拠：互いに重ならない集まりの人数は加法で合計できる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914D.buyers_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914D.buyers_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
