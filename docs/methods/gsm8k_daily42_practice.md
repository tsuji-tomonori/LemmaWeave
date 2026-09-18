# 運動時間からトランペット練習時間を求める

バスケットボール10時間の2倍をランニング、そのさらに2倍をトランペット練習とする。

**取得済み固定GSM8Kの1問。**

- twice as longを各直前の活動時間の2倍と読む。

## practice_running：ランニング時間

条件：バスケットボールは10時間、ランニングはその2倍。

根拠：

得られること：ランニングは20時間。

既習の根拠：基準時間に倍率2を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.practice_running`。

## practice_trumpet：トランペット時間

条件：トランペットはランニング20時間の2倍。

根拠：

得られること：トランペット練習は40時間。

既習の根拠：直前に求めた量へ倍率2を掛ける。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915C.practice_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915C.practice_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
