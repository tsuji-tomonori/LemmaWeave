# 全所要時間から第3部の時間を求める

第1部25分、第2部はその2倍、全体2時間の課題で第3部の時間を求める。

**取得済み固定GSM8Kの1問。**

- 3部の所要時間が全体を重複なく構成し、2時間を120分へ換算する。

## assignment_second：第2部

条件：第2部は第1部25分の2倍。

根拠：

得られること：50分。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.assignment_second`。

## assignment_first_two：最初の2部

条件：25分と50分を足す。

根拠：

得られること：75分。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.assignment_first_two`。

## assignment_total：全体の分換算

条件：1時間は60分で、全体は2時間。

根拠：

得られること：120分。

既習の根拠：中学校までの単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.assignment_total`。

## assignment_third：第3部

条件：全体120分から最初の2部75分を引く。

根拠：

得られること：45分。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.assignment_third`。

## assignment_exists：条件の充足

条件：50、75、120、45分を各段階へ置く。

根拠：

得られること：3部と全時間の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.assignment_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.assignment_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
