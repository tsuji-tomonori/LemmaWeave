# 出場時間からサイドライン時間を求める

90分の試合で20分と35分出場したときのサイドライン時間を求める。

**取得済み固定GSM8Kの1問。**

- 試合全体を出場時間とサイドライン時間の排反な合計として扱う。

## soccer_played：合計出場時間を求める

条件：20分と35分の2区間に出場した。

根拠：

得られること：出場は55分。

既習の根拠：20+35を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.soccer_played`。

## soccer_sideline：サイドライン時間を求める

条件：90分のうち55分出場した。

根拠：

得られること：サイドラインは35分。

既習の根拠：90−55を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.soccer_sideline`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.soccer_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
