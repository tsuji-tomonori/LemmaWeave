# 出生と解放後の頭数からコート数を求める

30匹が各6匹を産み、総数の半分を解放した後、15匹分ずつで作れるコート数を求める。

**取得済み固定GSM8Kの1問。**

- 成獣と子を合計してから半分を解放し、残りを15匹単位で使う。

## minks_babies：子の数を求める

条件：成獣30匹がそれぞれ6匹を産む。

根拠：

得られること：子は180匹。

既習の根拠：同数ずつの30組として30×6を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.minks_babies`。

## minks_total：総数を求める

条件：成獣30匹と子180匹を数える。

根拠：

得られること：総数は210匹。

既習の根拠：排反な成獣と子を加える。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.minks_total`。

## minks_remaining：残る数を求める

条件：210匹のちょうど半分を解放する。

根拠：

得られること：105匹が残る。

既習の根拠：210=105+105として半分を求める。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.minks_remaining`。

## minks_coats：作れるコート数を求める

条件：残り105匹分を1着15匹分ずつ使う。

根拠：

得られること：7着作れる。

既習の根拠：105=15×7を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913B.minks_coats`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913B.minks_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
