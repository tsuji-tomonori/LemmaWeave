# 2回のダウンロードから価値あるファイル数を求める

800件の70%と、追加400件の3/5を削除した。残る価値あるファイル数を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 第2回の削除後も第1回で残った240件を保持していると読む。重複ファイルは原文にない。

## files_first_irrelevant：第1回の削除数

条件：800件の70%が不要。

根拠：

得られること：560件を削除。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.files_first_irrelevant`。

## files_first_valuable：第1回の残数

条件：800件から不要560件を引く。

根拠：

得られること：価値ある240件が残る。

既習の根拠：中学校までの四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.files_first_valuable`。

## files_second_irrelevant：第2回の削除数

条件：追加400件の3/5が不要。

根拠：

得られること：240件を削除。

既習の根拠：中学校までの割合。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.files_second_irrelevant`。

## files_second_valuable：第2回の残数

条件：400件から不要240件を引く。

根拠：

得られること：価値ある160件が残る。

既習の根拠：中学校までの四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.files_second_valuable`。

## files_total：両回を合計

条件：両回の残存ファイルを保持する。

根拠：

得られること：240+160=400件。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.files_total`。

## files_exists：条件の充足

条件：削除560・240、残存240・160、合計400。

根拠：

得られること：全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.files_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.files_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
