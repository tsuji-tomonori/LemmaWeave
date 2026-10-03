# 残りの包装紙販売数を求める

目標12巻に対し3巻、4巻、3巻を販売済みのとき、残りを求める。

**取得済み固定GSM8Kの1問。**

- 3人への販売数を合計して目標から引く。

## paper_sold：販売済み数を求める

条件：祖母へ3、叔父へ4、近所の人へ3巻売った。

根拠：

得られること：販売済みは10巻。

既習の根拠：3+4+3を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.paper_sold`。

## paper_remaining：残りを求める

条件：目標12巻のうち10巻を販売済み。

根拠：

得られること：あと2巻必要。

既習の根拠：12−10を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.paper_remaining`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.paper_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
