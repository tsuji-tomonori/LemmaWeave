# 残った小麦粉で作れるピザ

7時間に10分ごとにピザを作り、22kgの小麦粉から1枚0.5kgを使った残りで作れる枚数を求める。

**取得済み固定GSM8Kの1問。連続作業条件を明示した。**

- 7時間中に休止なく一定時間ごとに完成する条件で、0.5kgを1単位として端数なく計算する。

## pizza_minutes：販売時間の換算

条件：販売時間は7時間で、1時間は60分。

根拠：

得られること：合計420分。

既習の根拠：時間から分への単位換算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.pizza_minutes`。

## pizza_made：会場で作る枚数

条件：420分間、休みなく10分ごとに1枚完成する。

根拠：

得られること：42枚作る。

既習の根拠：総時間＝枚数×1枚当たり時間。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.pizza_made`。

## pizza_left：残る小麦粉

条件：22kgは0.5kg単位44個分で、42枚に42単位を使う。

根拠：

得られること：2単位、すなわち1kg残る。

既習の根拠：初期量＝使用量＋残量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.pizza_left`。

## pizza_home：持ち帰り用の枚数

条件：残りは0.5kg単位2個で、1枚に1単位使う。

根拠：

得られること：家へ持ち帰るために2枚作れる。

既習の根拠：利用可能単位数と1枚当たり使用単位の対応。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0912A.pizza_home`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0912A.pizza_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
