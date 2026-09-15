# 3種類の魚の総数を求める

金魚8匹、金魚より4匹多いエンゼルフィッシュ、その2倍のグッピーの合計を求める。

**取得済み固定GSM8Kの1問。**

- 『twice as many guppies as angelfish』をグッピー数=2×エンゼルフィッシュ数と読む。

## fish_angelfish：エンゼルフィッシュを求める

条件：金魚8匹より4匹多い。

根拠：

得られること：エンゼルフィッシュは12匹。

既習の根拠：8+4を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.fish_angelfish`。

## fish_guppies：グッピーを求める

条件：グッピーはエンゼルフィッシュの2倍。

根拠：

得られること：グッピーは24匹。

既習の根拠：12×2を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.fish_guppies`。

## fish_total：全種類を合計する

条件：水槽の魚は記載された3種類を合計する。

根拠：

得られること：合計44匹。

既習の根拠：8+12+24を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914B.fish_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914B.fish_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
