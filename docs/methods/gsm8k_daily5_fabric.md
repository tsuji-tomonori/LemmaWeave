# 長方形の布を切った残りの面積を求める

16×12平方フィートの布から4×6と2×4の長方形を切り、残面積を求める。

**取得済み固定GSM8Kの1問。**

- 2枚を重ならず切り出せるものとし、使用面積を各長方形の面積の和とする。

## fabric_bolt：布全体の面積

条件：布は16フィート×12フィート。

根拠：

得られること：192平方フィート。

既習の根拠：中学校までの長方形の面積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.fabric_bolt`。

## fabric_living：居間用の面積

条件：4フィート×6フィート。

根拠：

得られること：24平方フィート。

既習の根拠：中学校までの長方形の面積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.fabric_living`。

## fabric_bedroom：寝室用の面積

条件：2フィート×4フィート。

根拠：

得られること：8平方フィート。

既習の根拠：中学校までの長方形の面積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.fabric_bedroom`。

## fabric_remaining：残面積

条件：全体から重ならない2枚の面積を引く。

根拠：

得られること：192-24-8=160平方フィート。

既習の根拠：中学校までの減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.fabric_remaining`。

## fabric_exists：条件の充足

条件：各面積を192、24、8、160と置く。

根拠：

得られること：長方形と残面積の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907E.fabric_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907E.fabric_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
