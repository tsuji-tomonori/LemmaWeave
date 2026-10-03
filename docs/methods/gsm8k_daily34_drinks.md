# 飲料選択の和集合人数と全参加者の条件を示す

ワイン26人、ソーダ22人、両方17人から少なくとも一方を飲んだ人数を求め、集会全体との関係を示す。

**取得済み固定GSM8Kの1問。**

- 31人は少なくとも一方を飲んだ人数。全参加者が飲料を取った追加条件なら全体も31人だが、どちらも取らない人を許すと一意でない。

## drinks_wine_only：ワインだけの人数を求める

条件：ワイン26人のうち17人は両方を飲んだ。

根拠：

得られること：ワインだけは9人。

既習の根拠：26−17を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.drinks_wine_only`。

## drinks_soda_only：ソーダだけの人数を求める

条件：ソーダ22人のうち17人は両方を飲んだ。

根拠：

得られること：ソーダだけは5人。

既習の根拠：22−17を計算する。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.drinks_soda_only`。

## drinks_union：少なくとも一方を飲んだ人数を求める

条件：ワインだけ、ソーダだけ、両方は排反。

根拠：

得られること：少なくとも一方を飲んだのは31人。

既習の根拠：9+5+17を加える包除原理。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.drinks_union`。

## drinks_total_if_everyone_took_a_drink：全員が飲んだ場合の全体人数を求める

条件：どちらの飲料も取らなかった参加者が0人。

根拠：

得られること：集会全体は31人。

既習の根拠：全体=和集合+どちらも取らない人数を用いる。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.drinks_total_if_everyone_took_a_drink`。

## drinks_total_not_unique：追加条件なしでは全体人数が一意でないことを示す

条件：どちらも取らない参加者を禁止する条件がない解釈。

根拠：

得られること：0人なら全体31人、1人なら32人となり一意でない。

既習の根拠：異なる二つの具体例による反例法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0913C.drinks_total_not_unique`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0913C.drinks_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
