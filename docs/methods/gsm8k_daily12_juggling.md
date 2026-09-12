# 週ごとに増えるジャグリング個数を条件別に求める

最初は3個で、毎週2個ずつ増やせる。5週間練習した後の個数を求める。

**取得済み固定GSM8Kの1問。**

- 開始値から5回改善なら13個、開始週を5週間の第1週に含めるなら改善4回で11個となるため両方を証明する。

## juggling_intended：5回改善する解釈

条件：開始3個の後に週次改善を5回完了する。

根拠：

得られること：3+5×2=13個。

既習の根拠：等差的な反復加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.juggling_intended`。

## juggling_alternative：開始週を第1週とする解釈

条件：5週間の第1週が開始3個なら改善は4回。

根拠：

得られること：3+4×2=11個。

既習の根拠：区間数と項数の違い。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.juggling_alternative`。

## juggling_distinct：一意性不足の確認

条件：原文が改善回数を特定しない。

根拠：

得られること：13と11は異なるため追加条件なしには一意でない。

既習の根拠：反例による一意性否定。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0909A.juggling_distinct`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0909A.juggling_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
