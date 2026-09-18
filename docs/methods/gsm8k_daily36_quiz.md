# 正解点と全問正解ボーナスを合計する

5問ずつ5ラウンドで1問だけ誤答した生徒の、正解点と全問正解ラウンドのボーナスを求める。

**取得済み固定GSM8Kの1問。**

- 1問の誤答は1ラウンドだけを全問正解でなくするため、残る4ラウンドがボーナス対象。
- 参照解の途中計算は64点だが末尾ラベルだけ66となっており、原題から64点と再計算した。

## quiz_correct：正解数を求める

条件：5ラウンド×5問の全25問中、誤答は1問だけ。

根拠：

得られること：正解は24問。

既習の根拠：全問数から誤答数を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.quiz_correct`。

## quiz_base_and_bonus：通常点とボーナスを求める

条件：正解1問2点。誤答1問が属する1ラウンド以外の4ラウンドは全問正解で、各4点のボーナス。

根拠：

得られること：通常点48点、ボーナス16点。

既習の根拠：単価×個数をそれぞれ計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.quiz_base_and_bonus`。

## quiz_total：総得点を求める

条件：総得点は通常点とボーナスの和。

根拠：

得られること：Jamesは64点を得た。

既習の根拠：48+16を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.quiz_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.quiz_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
