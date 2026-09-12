# 2人分の延べ観戦時間と日程重複を区別する

娘2人が各8試合、1試合2時間、試合ごとに4時間練習する場合の観戦時間を求める。

**取得済み固定GSM8Kの1問。日程重複の不足条件を隠さない。**

- 娘時間の延べ合計または日程が重ならない追加条件では96時間。実経過時間は重複量により48〜96時間。

## daughters_games：試合の延べ時間

条件：2人×各8試合×2時間。

根拠：

得られること：32時間。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.daughters_games`。

## daughters_practice：練習の延べ時間

条件：2人×各8試合×4時間。

根拠：

得られること：64時間。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.daughters_practice`。

## daughters_total：延べ合計

条件：重複を数える娘時間、または日程が重ならない実時間。

根拠：

得られること：32+64=96時間。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.daughters_total`。

## field_bounds：実経過時間の範囲

条件：1人分48時間どうしの重複は0〜48時間。

根拠：

得られること：実経過時間は48〜96時間。

既習の根拠：包除と不等式。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.field_bounds`。

## field_examples：重複の反例

条件：完全非重複と完全重複の双方が原文に反しない。

根拠：

得られること：96時間と48時間があり一意でない。

既習の根拠：反例。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.field_examples`。

## daughters_exists：延べ条件の充足

条件：試合32、練習64、合計96時間と置く。

根拠：

得られること：延べ時間の全条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908A.daughters_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908A.daughters_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
