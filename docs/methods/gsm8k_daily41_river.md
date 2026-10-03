# 川幅に入る競走艇の最大数

両岸と艇間に2フィート以上の間隔を置いて、幅42フィートに並べられる幅3フィートの艇の最大数を求める。

**取得済み固定GSM8Kの1問。**

- 艇を横一列に並べ、n艇には艇幅n個と両岸を含む間隔n+1個が必要とする。

## river_maximum：幅の不等式

条件：n艇の必要幅は3n+2(n+1)で42以下、n+1艇では42を超える。

根拠：

得られること：最大艇数は8艇。

既習の根拠：各艇の幅と全間隔を数え、次の整数が入らないことまで確認する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.river_boats`。

## river_answer：配置確認

条件：8艇では8×3+9×2=42フィートを使う。

根拠：

得られること：ちょうど収まり、9艇は収まらないので答えは8艇。

既習の根拠：候補が条件を満たすことと最大性を同時に確認する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.river_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.river_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
