# 材料の指定数値を問題の規約どおり合計する

水10カップ、小麦粉16カップ、塩は小麦粉の数の半分の小さじ。問題が求める数値合計を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- カップと小さじは異なる次元の単位なので34は物理量の和ではない。原文が要求する各数量の数値だけを足す追加規約付きの答え。

## ingredients_salt：塩の小さじ数

条件：塩の小さじ数は小麦粉16カップという数値の1/2。

根拠：

得られること：塩は8小さじ。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.ingredients_salt`。

## ingredients_total：指定された数値の合計

条件：原文の規約に従い、単位換算せず10、16、8という数値を足す。

根拠：

得られること：数値合計は34。物理量として34カップとはしない。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.ingredients_total`。

## ingredients_exists：条件の充足

条件：塩8、数値合計34。

根拠：

得られること：追加規約付きモデルを満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.ingredients_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.ingredients_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
