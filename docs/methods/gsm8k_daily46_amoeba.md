# アメーバが16匹になる日数

2日ごとの二分裂で1匹が16匹になるまでの倍加回数と日数を求める。

**取得済み固定GSM8Kの1問。**

- 全個体が各周期に同時に二分裂する通常の読みを採用する。

## amoeba_counts：4回の倍加

条件：1匹から各分裂周期に個体数が2倍になる。

根拠：

得られること：1→2→4→8→16なので分裂周期は4回。

既習の根拠：二分裂による倍加を繰り返す。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.amoeba_counts`。

## amoeba_days：経過日数

条件：1周期は2日で、16匹まで4周期。

根拠：

得られること：4×2=8日。

既習の根拠：同じ期間の繰返し回数と期間の積。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917B.amoeba_days`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917B.amoeba_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
