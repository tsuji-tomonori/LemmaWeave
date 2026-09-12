# 名字の文字数を逆算する

Samanthaの名字はBobbieより3文字少ない。Bobbieから2文字取るとJamieの名字の2倍。Jamie GreyのときSamanthaは何文字？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- full nameの空白や名Jamieは名字の文字数に含めず、last name Greyだけを数える。
- 自然数の切捨て減算の誤用を避けるためBobbieの長さが2以上もモデルに含める。

## names_jamie：Jamieの名字

条件：Greyの英字を数える。

根拠：

得られること：4文字。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.names_jamie`。

## names_bobbie：Bobbieの元の長さ

条件：2文字除いた長さが2×4=8で、元の長さは2以上。

根拠：

得られること：元は10文字。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.names_bobbie`。

## names_removed：取り除いた後の長さ

条件：Bobbieは10文字。

根拠：

得られること：10−2=8文字でJamieの2倍。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.names_removed`。

## names_samantha：Samanthaの長さ

条件：Bobbie10文字より3文字少ない。

根拠：

得られること：7文字。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.names_samantha`。

## names_exists：条件の充足

条件：Jamie4、Bobbie10、Samantha7。

根拠：

得られること：切取り・2倍・3文字差を満たす。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.names_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907B.names_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
