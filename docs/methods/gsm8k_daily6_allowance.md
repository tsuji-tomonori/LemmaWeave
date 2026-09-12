# 2群の日額平均から総支給額を求める

60人の3分の2が平均6ドル、残りが平均4ドルを受けるとき、1日の総額を求める。

**取得済み固定GSM8Kの1問。**

- 各群の平均額×人数をその群の1日総額とし、2群が60人全体を分割する。

## allowance_six_students：6ドル群の人数

条件：60人の3分の2。

根拠：

得られること：40人。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.allowance_six_students`。

## allowance_four_students：4ドル群の人数

条件：全60人から40人を引く。

根拠：

得られること：20人。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.allowance_four_students`。

## allowance_six_amount：6ドル群の総額

条件：40人が平均6ドル。

根拠：

得られること：240ドル。

既習の根拠：平均×人数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.allowance_six_amount`。

## allowance_four_amount：4ドル群の総額

条件：20人が平均4ドル。

根拠：

得られること：80ドル。

既習の根拠：平均×人数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.allowance_four_amount`。

## allowance_total：全員の総額

条件：2群の総額を合計する。

根拠：

得られること：240+80=320ドル。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.allowance_total`。

## allowance_exists：条件の充足

条件：人数40、20、群総額240、80、全体320と置く。

根拠：

得られること：割合、平均、総額の全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.allowance_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.allowance_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
