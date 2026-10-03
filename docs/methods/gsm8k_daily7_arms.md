# ヒトデ類の腕の総数を求める

腕が5本のヒトデ7匹と腕が14本のオニヒトデ1匹の腕の総数を求める。

**取得済み固定GSM8Kの1問。**

- 7匹分と1匹分を別に数えて合計する。

## arms_starfish：通常のヒトデの腕

条件：7匹がそれぞれ5本の腕を持つ。

根拠：

得られること：35本。

既習の根拠：中学校までの乗法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.arms_starfish`。

## arms_total：腕の総数

条件：35本にオニヒトデの14本を足す。

根拠：

得られること：49本。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.arms_total`。

## arms_exists：条件の充足

条件：35本と49本を置く。

根拠：

得られること：各種類の腕数と合計条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.arms_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.arms_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
