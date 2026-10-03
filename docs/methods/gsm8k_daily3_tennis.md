# 区間別の未打球数を合計する

最初の100球は2/5、次の75球は1/3を打った。全175球のうち打てなかった球数を求める。

**取得済み固定GSM8Kの1問。原文をLLMが個別に解答し、他コレクションへ混ぜない。**

- 100球と75球は重ならず合計175球。打てなかった割合は各区間で1から打った割合を引く。

## tennis_first：最初の区間

条件：最初の100球の2/5を打った。

根拠：

得られること：未打球は(1-2/5)×100=60球。

既習の根拠：中学校までの割合と四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.tennis_first`。

## tennis_next：次の区間

条件：次の75球の1/3を打った。

根拠：

得られること：未打球は(1-1/3)×75=50球。

既習の根拠：中学校までの割合と四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.tennis_next`。

## tennis_total：未打球を合計

条件：2区間は重ならない。

根拠：

得られること：60+50=110球。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.tennis_total`。

## tennis_exists：条件の充足

条件：区間別未打球60球、50球、合計110球。

根拠：

得られること：割合と合計の条件を満たす。

既習の根拠：中学校までの等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907C.tennis_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907C.tennis_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
