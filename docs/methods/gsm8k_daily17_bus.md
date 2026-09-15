# 往復と滞在を含むバスツアー時間

往路55マイル、復路は10マイル長く、1マイル2分で走り、目的地に2時間滞在するとき総所要時間を求める。

**取得済み固定GSM8Kの1問。**

- 走行時間と目的地での滞在時間を分けてから合算する。

## bus_return：復路距離

条件：復路は往路55マイルより10マイル長い。

根拠：

得られること：復路は65マイル。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bus_return`。

## bus_miles：往復距離

条件：往路55マイルと復路65マイル。

根拠：

得られること：合計120マイル。

既習の根拠：区間距離の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bus_miles`。

## bus_minutes：走行分数

条件：120マイルを1マイル2分で走る。

根拠：

得られること：240分走る。

既習の根拠：距離×単位距離当たり時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bus_minutes`。

## bus_travel_hours：走行時間

条件：240分を60分で1時間として換算する。

根拠：

得られること：走行は4時間。

既習の根拠：分から時間への単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bus_travel_hours`。

## bus_total：ツアー総時間

条件：走行4時間と滞在2時間。

根拠：

得られること：合計6時間。

既習の根拠：時間の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910A.bus_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910A.bus_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
