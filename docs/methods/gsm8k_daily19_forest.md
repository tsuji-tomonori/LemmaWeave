# 3週間後のイタチとウサギ

3匹の狐が各週に捕る種別個体数から3週間後の残数を求める。

**取得済み固定GSM8Kの1問。**

- 狐数、週数、種別捕獲数を別々に掛ける。

## forest_caught_weasels：捕獲されたイタチ

条件：狐3匹が1匹4匹ずつを週3回捕る。

根拠：

得られること：36匹捕獲。

既習の根拠：単位当たり量の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.forest_caught_weasels`。

## forest_caught_rabbits：捕獲されたウサギ

条件：狐3匹が1匹2匹ずつを週3回捕る。

根拠：

得られること：18匹捕獲。

既習の根拠：単位当たり量の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.forest_caught_rabbits`。

## forest_left_weasels：残るイタチ

条件：初期100匹から36匹を引く。

根拠：

得られること：64匹残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.forest_left_weasels`。

## forest_left_rabbits：残るウサギ

条件：初期50匹から18匹を引く。

根拠：

得られること：32匹残る。

既習の根拠：減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.forest_left_rabbits`。

## forest_total：合計残数

条件：残った64匹と32匹を合算。

根拠：

得られること：合計96匹。

既習の根拠：加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0910C.forest_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0910C.forest_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
