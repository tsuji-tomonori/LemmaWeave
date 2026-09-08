# 空席の椅子から出席者数を求める

2人掛けの椅子40脚のうち5分の2が空で、残りは各2人が着席したときの出席者数を求める。

**取得済み固定GSM8Kの1問。**

- 全会員80人という情報は欠席者を含み、出席数は着席状況から求める。

## conference_empty：空いている椅子

条件：40脚の5分の2。

根拠：

得られること：16脚。

既習の根拠：割合の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.conference_empty`。

## conference_occupied：使用中の椅子

条件：40脚から空席16脚を除く。

根拠：

得られること：24脚。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.conference_occupied`。

## conference_attended：出席者数

条件：使用中24脚に各2人。

根拠：

得られること：48人。

既習の根拠：乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.conference_attended`。

## conference_exists：条件の充足

条件：40、2、16、24、48と置く。

根拠：

得られること：全条件を満たす。

既習の根拠：数値等式の確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.conference_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.conference_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
