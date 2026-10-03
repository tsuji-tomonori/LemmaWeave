# 本人と猫の診療費自己負担

本人の診療費300ドルの75%と、猫の診療費120ドル中60ドルを保険が負担するとき、自己負担合計を求める。

**取得済み固定GSM8Kの1問。**

- His doctor's visits $300は本人の診療費が300ドルという文脈上の誤記として読む。

## medical_doctor_covered：本人分の保険負担

条件：本人の診療費300ドルの75%を保険が負担する。

根拠：

得られること：保険負担は225ドル。

既習の根拠：百分率。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.medical_doctor_covered`。

## medical_doctor_paid：本人の自己負担

条件：300ドル中225ドルが保険負担。

根拠：

得られること：本人の自己負担は75ドル。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.medical_doctor_paid`。

## medical_cat_paid：猫の自己負担

条件：猫の診療費120ドル中60ドルが保険負担。

根拠：

得られること：猫の自己負担は60ドル。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.medical_cat_paid`。

## medical_total：自己負担合計

条件：本人75ドル、猫60ドルを支払う。

根拠：

得られること：合計は135ドル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909D.medical_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909D.medical_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
