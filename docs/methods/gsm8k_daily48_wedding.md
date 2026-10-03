# 結婚披露宴の友人客

180人の披露宴で新郎新婦が各20組の親族夫婦を招いたとき友人の人数を求める。

**取得済み固定GSM8Kの1問。**

- 各夫婦2人が全員出席し、両家の親族客は重複せず、残りが友人という条件。

## wedding_family：親族客の人数

条件：新婦側と新郎側がそれぞれ20組の夫婦を招き、各組2人が出席する。

根拠：

得られること：両家の親族客はそれぞれ40人。

既習の根拠：組数×2人。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.wedding_family`。

## wedding_friends：友人客の人数

条件：総数180人から両家の親族客40人ずつを除く。

根拠：

得られること：友人は180−40−40=100人。

既習の根拠：全体から部分を引く。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0917D.wedding_friends`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0917D.wedding_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
