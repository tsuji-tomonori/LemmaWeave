# 洗濯に使う水量

洗濯種別の水量と漂白時の追加すすぎから必要な水量を求める。

**取得済み固定GSM8Kの1問。**

- 漂白する2負荷には各1回、軽洗い相当2ガロンの追加すすぎがある。

## wash_heavy：強洗い

条件：強洗いは1負荷20ガロンを2回。

根拠：

得られること：40ガロン。

既習の根拠：単価型の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.wash_heavy`。

## wash_regular：通常洗い

条件：通常洗いは1負荷10ガロンを3回。

根拠：

得られること：30ガロン。

既習の根拠：単価型の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.wash_regular`。

## wash_light：軽洗い

条件：軽洗いは1負荷2ガロンを1回。

根拠：

得られること：2ガロン。

既習の根拠：単価型の乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.wash_light`。

## wash_bleach：漂白追加すすぎ

条件：漂白2負荷へ各2ガロンの軽洗いを追加する。

根拠：

得られること：4ガロン。

既習の根拠：追加回数と水量。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.wash_bleach`。

## wash_total：合計

条件：4種類の使用水量は重複しない。

根拠：

得られること：40+30+2+4=76ガロン。

既習の根拠：部分量の加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0911B.wash_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0911B.wash_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
