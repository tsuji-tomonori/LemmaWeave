# 一週間の目標平均から最終日の読書量を求める

日平均50ページを達成するため、既知の6日分から土曜日に読むページ数を求める。

**取得済み固定GSM8Kの1問。**

- 平均×日数で一週間の目標総数を求め、水曜日の0ページも含めて既読分との差を取る。

## reading_weekly：一週間の目標を求める

条件：7日間の平均を50ページにする。

根拠：

得られること：目標総数は350ページ。

既習の根拠：平均が総数÷個数であるため、総数は50×7。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.reading_weekly`。

## reading_before：土曜日までの既読量を求める

条件：日曜から金曜の読書量は43、65、28、0、70、56ページである。

根拠：

得られること：既読量は262ページ。

既習の根拠：曜日ごとの互いに別のページ数を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.reading_before`。

## reading_saturday：不足分を求める

条件：目標350ページのうち262ページを金曜までに読んだ。

根拠：

得られること：土曜日には88ページ読む必要がある。

既習の根拠：350=262+88となる差を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913A.reading_saturday`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913A.reading_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
