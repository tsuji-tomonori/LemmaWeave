# 菓子販売後の残金

クッキー40個を0.8ドル、カップケーキ30個を2ドルで売り、6.5ドルの計量スプーンを2組買った残金を求める。

**取得済み固定GSM8Kの1問。**

- 金額をすべてセントへ換算して端数なく計算する。

## sales_cookie_revenue：クッキーの売上

条件：40個を1個80セントで売る。

根拠：

得られること：売上は3200セント。

既習の根拠：個数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.sales_cookie_revenue`。

## sales_cupcake_revenue：カップケーキの売上

条件：30個を1個200セントで売る。

根拠：

得られること：売上は6000セント。

既習の根拠：個数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.sales_cupcake_revenue`。

## sales_total：売上合計

条件：2商品の売上を合わせる。

根拠：

得られること：売上は9200セント。

既習の根拠：部分の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.sales_total`。

## sales_spoon_cost：計量スプーン代

条件：2組を1組650セントで買う。

根拠：

得られること：購入費は1300セント。

既習の根拠：組数×単価。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.sales_spoon_cost`。

## sales_remaining：セントでの残金

条件：9200セントの売上から1300セントを使う。

根拠：

得られること：残金は7900セント。

既習の根拠：残金＝売上－支出。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.sales_remaining`。

## sales_dollars：ドルへの換算

条件：100セントが1ドル。

根拠：

得られること：残金は79ドル。

既習の根拠：通貨単位の換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.sales_dollars`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.sales_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
