# 日平均の二つの読みを分けて週間冊数を求める

毎日平均40冊を借り、金曜は日平均より約40%多いとき、月曜から金曜の週間冊数を求める。

**取得済み固定GSM8Kの1問。条件不足を含む有効な個別解答。**

- aboutには誤差幅がない。さらに40冊を金曜以外の基準値と読むか5日全体の平均と読むかで答えが異なる。

## library_friday_increase：金曜の増加分

条件：aboutを正確な40%と仮定し、基準を40冊とする。

根拠：

得られること：40×40÷100=16冊増。

既習の根拠：中学校までの割合計算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.library_friday_increase`。

## library_friday：金曜の冊数

条件：基準40冊に増加16冊を足す。

根拠：

得られること：金曜は56冊。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.library_friday`。

## library_baseline：月〜木が各40冊という条件付き解

条件：月〜木を各40冊、金曜を56冊とする。

根拠：

得られること：4×40+56=216冊。

既習の根拠：中学校までの乗法と加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.library_baseline`。

## library_overall：5日全体の平均が40冊という別解釈

条件：月〜金の5日間全体の算術平均が40冊。

根拠：

得られること：週間合計は5×40=200冊。

既習の根拠：中学校までの平均の定義。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.library_overall`。

## library_ambiguity：一意性がないことの確認

条件：40冊という表現について上の二解釈を許す。

根拠：

得られること：216≠200なので原文だけでは一意に決まらない。典型的追加条件なら216冊。

既習の根拠：反例による一意性否定。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908D.library_ambiguity`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908D.library_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
