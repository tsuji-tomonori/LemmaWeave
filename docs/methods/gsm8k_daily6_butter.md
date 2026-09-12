# 順に使用したバターの残量を求める

10kgの半分と5分の1を使い、その残りの3分の1をさらに使った残量を求める。

**取得済み固定GSM8Kの1問。**

- 半分と5分の1はいずれも元の10kgに対し、砂糖クッキー用の3分の1だけはその時点の残量に対する割合。

## butter_chocolate：チョコ用

条件：10kgの2分の1。

根拠：

得られること：5kg。

既習の根拠：中学校までの分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.butter_chocolate`。

## butter_peanut：ピーナツ用

条件：元の10kgの5分の1。

根拠：

得られること：2kg。

既習の根拠：中学校までの分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.butter_peanut`。

## butter_after_two：2種類後の残量

条件：10kgから5kgと2kgを引く。

根拠：

得られること：3kg。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.butter_after_two`。

## butter_sugar：砂糖用

条件：残り3kgの3分の1。

根拠：

得られること：1kg。

既習の根拠：中学校までの分数。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.butter_sugar`。

## butter_remaining：最終残量

条件：3kgから1kgを引く。

根拠：

得られること：2kg残る。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.butter_remaining`。

## butter_exists：条件の充足

条件：5、2、3、1、2kgを各段階へ置く。

根拠：

得られること：割合と残量の全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.butter_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.butter_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
