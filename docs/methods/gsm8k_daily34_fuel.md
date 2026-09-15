# 総走行距離と消費燃料から燃費を求める

スーパー往復、農場への引返し、農場までの走行距離と消費10ガロンから燃費を求める。

**取得済み固定GSM8Kの1問。**

- 農場へ2マイル進んで戻った4マイルと、改めて農場まで進んだ6マイルを重複なく数える。

## fuel_supermarket_round：スーパー往復距離を求める

条件：片道5マイルを往復する。

根拠：

得られること：往復10マイル。

既習の根拠：5×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.fuel_supermarket_round`。

## fuel_total_distance：総走行距離を求める

条件：引返しは2マイルずつ往復し、その後農場まで6マイル走る。

根拠：

得られること：総走行距離は20マイル。

既習の根拠：10+4+6を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.fuel_total_distance`。

## fuel_rate：消費量と燃費を求める

条件：12ガロンから2ガロン残り、20マイル走行した。

根拠：

得られること：10ガロン消費し、燃費は2マイル毎ガロン。

既習の根拠：消費量=初期−残量、燃費=距離÷消費量を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.fuel_rate`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.fuel_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
