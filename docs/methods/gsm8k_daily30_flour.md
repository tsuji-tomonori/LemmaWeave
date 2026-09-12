# 二種類の袋の全組合せから小麦粉費用を最小化

12斤に各4ポンド必要。10ポンド10ドル袋と12ポンド13ドル袋を混ぜてもよいとき、十分な量を最安で買う費用を求める。

**取得済み固定GSM8Kの1問。**

- 参照解の同種袋比較を強め、10・12ポンド袋の任意の非負整数組合せを検査する一般命題にした。

## flour_need：必要量

条件：12斤それぞれに4ポンド使う。

根拠：

得られること：48ポンド必要。

既習の根拠：総量＝斤数×一斤当たり量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.flour_need`。

## flour_candidate：50ドルの購入案

条件：10ポンド10ドル袋を5袋、12ポンド袋を0袋買う。

根拠：

得られること：50ポンドを50ドルで得て48ポンド以上を満たす。

既習の根拠：袋数×内容量と袋数×単価を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.flour_candidate`。

## flour_minimal：全組合せに対する下界

条件：10ポンド袋をx個、12ポンド袋をy個買い、x,yは非負整数で合計48ポンド以上。

根拠：

得られること：どの組合せも費用は50ドル以上。よって候補50ドルが最安。

既習の根拠：10x+12y≥48と費用10x+13yを自然数線形算術で比較する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912D.flour_minimal`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912D.flour_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
