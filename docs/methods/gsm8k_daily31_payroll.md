# 職種別賃金とFICA税を合算する

倉庫作業員4人と管理職2人の月額賃金を求め、賃金の10%のFICA税を加える。

**取得済み固定GSM8Kの1問。**

- 全員が25日間、毎日8時間働き、FICA税は総賃金のちょうど10%と読む。

## payroll_hours：一人の月間労働時間を求める

条件：一人につき25日、毎日8時間働く。

根拠：

得られること：一人の月間労働時間は200時間。

既習の根拠：日数×1日当たり時間を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.payroll_hours`。

## payroll_warehouse：倉庫作業員の賃金を求める

条件：4人が各200時間、時給15ドルで働く。

根拠：

得られること：倉庫作業員の賃金は12000ドル。

既習の根拠：人数×時間×時給を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.payroll_warehouse`。

## payroll_managers：管理職の賃金を求める

条件：2人が各200時間、時給20ドルで働く。

根拠：

得られること：管理職の賃金は8000ドル。

既習の根拠：人数×時間×時給を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.payroll_managers`。

## payroll_wages：総賃金を求める

条件：倉庫作業員分12000ドルと管理職分8000ドルがある。

根拠：

得られること：総賃金は20000ドル。

既習の根拠：職種別の賃金を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.payroll_wages`。

## payroll_tax：FICA税を求める

条件：総賃金20000ドルの10%を税として払う。

根拠：

得られること：FICA税は2000ドル。

既習の根拠：100×税額＝10×賃金という百分率の整数方程式を解く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.payroll_tax`。

## payroll_total：賃金と税の合計を求める

条件：賃金20000ドルにFICA税2000ドルを加える。

根拠：

得られること：支払総額は22000ドル。

既習の根拠：雇用主が負担する二つの金額を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.payroll_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.payroll_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
