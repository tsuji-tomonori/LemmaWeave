# C組の生徒数

全80人の40%がA組、B組はA組より21人少なく、残りがC組である。C組の人数を求める。

**取得済み固定GSM8Kの1問。**

- 3組が全生徒を重複なく分けるものとして残りを求める。

## class_a：A組の人数

条件：全80人の40%がA組。

根拠：

得られること：A組は32人。

既習の根拠：部分＝全体×割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.class_a`。

## class_b：B組の人数

条件：B組は32人のA組より21人少ない。

根拠：

得られること：B組は11人。

既習の根拠：比較量＝基準量－差。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.class_b`。

## class_c：残りのC組

条件：A・B・C組の合計が80人で、A組32人、B組11人。

根拠：

得られること：C組は37人。

既習の根拠：全体から既知の部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911E.class_c`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911E.class_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
