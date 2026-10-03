# 調理と映画鑑賞の合計時間

2本の映画時間とポップコーン・フライ調理時間を分へ統一し、合計を時間へ戻す。

**取得済み固定GSM8Kの1問。**

- 調理は映画の前に順に行われ、重複時間はないと解釈する。

## movie_lengths：映画2本の時間

条件：1本目は90分、2本目は30分長い。

根拠：

得られること：2本目は120分、鑑賞時間は210分。

既習の根拠：時間単位を分へそろえて加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.movie_lengths`。

## movie_cooking：調理時間

条件：ポップコーン10分、フライはその2倍。

根拠：

得られること：フライ20分、調理合計30分。

既習の根拠：倍の時間を求めて加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.movie_cooking`。

## movie_total：全所要時間

条件：鑑賞210分と調理30分を足し、1時間60分で換算する。

根拠：

得られること：合計240分、すなわち4時間。

既習の根拠：合計分数を60で割って時間へ換算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0915B.movie_solution`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0915B.movie_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
