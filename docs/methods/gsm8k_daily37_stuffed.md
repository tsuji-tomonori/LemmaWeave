# 支払総額からぬいぐるみ代を逆算する

4ドルの塗り絵2冊、1.50ドルのピーナツ4袋、ぬいぐるみ1個を25ドルちょうどで買ったとき、ぬいぐるみ代を求める。

**取得済み固定GSM8Kの1問。**

- 小数を避け、金額はすべてセントで表す。税はなく、釣銭なしを合計2500セントと解釈する。

## stuffed_known：既知商品の代金を求める

条件：塗り絵は2×400セント、ピーナツは4×150セント。

根拠：

得られること：既知分は800+600=1400セント。

既習の根拠：単価×個数を合計する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.stuffed_known`。

## stuffed_price：残額をぬいぐるみ代とする

条件：総額2500セントで釣銭がない。

根拠：

得られること：ぬいぐるみは2500-1400=1100セント、すなわち11ドル。

既習の根拠：総額から既知分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914C.stuffed_price`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914C.stuffed_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
