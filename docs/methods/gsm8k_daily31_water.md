# 作物別水量を積み上げて農家の使用率を求める

三農家の作付面積と作物別の1エーカー当たり水量から、Bob農場が全水量に占める百分率を求める。

**取得済み固定GSM8Kの1問。**

- 各農家の使用量は、作物ごとの面積×単位水量の和である。
- 百分率は全体が0でないとき100×部分量÷全体量で求める。

## water_bean_rate：豆の単位水量を求める

条件：豆はトウモロコシの2倍、トウモロコシは1エーカー当たり20ガロンを使う。

根拠：

得られること：豆は1エーカー当たり40ガロンを使う。

既習の根拠：倍率の定義により20×2=40。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.water_bean_rate`。

## water_bob：Bobの使用量を求める

条件：Bobはトウモロコシ3、綿9、豆12エーカーを作り、単位水量は順に20、80、40ガロンである。

根拠：

得られること：Bobの使用量は1260ガロン。

既習の根拠：異なる作物の水量を3×20+9×80+12×40と加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.water_bob`。

## water_brenda：Brendaの使用量を求める

条件：Brendaはトウモロコシ6、綿7、豆14エーカーを作る。

根拠：

得られること：Brendaの使用量は1240ガロン。

既習の根拠：面積×単位水量を作物ごとに求めて加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.water_brenda`。

## water_bernie：Bernieの使用量を求める

条件：Bernieはトウモロコシ2、綿12エーカーを作る。

根拠：

得られること：Bernieの使用量は1000ガロン。

既習の根拠：2×20+12×80を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.water_bernie`。

## water_total：全使用量を求める

条件：三農家の使用量が1260、1240、1000ガロンである。

根拠：

得られること：全使用量は3500ガロン。

既習の根拠：三つの互いに別の農場の水量を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.water_total`。

## water_percentage：Bobの百分率を求める

条件：Bobは1260ガロン、全体は0でない3500ガロンを使う。

根拠：

得られること：Bobの割合は36%。

既習の根拠：百分率100×1260÷3500を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912E.water_percentage`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912E.water_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
