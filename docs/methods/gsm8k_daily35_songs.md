# 2日間に聴いた曲数を求める

昨日は今日より5曲少なく9曲だったとき、2日間の合計を求める。

**取得済み固定GSM8Kの1問。**

- 『昨日が今日より5曲少ない』を今日=昨日+5と読む。

## songs_today：今日の曲数を求める

条件：昨日9曲は今日より5曲少ない。

根拠：

得られること：今日は14曲。

既習の根拠：9+5を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.songs_today`。

## songs_total：2日分を合計する

条件：昨日9曲、今日14曲。

根拠：

得られること：2日間で23曲。

既習の根拠：9+14を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0914A.songs_total`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0914A.songs_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
