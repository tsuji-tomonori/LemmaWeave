# 参加人数からトレイルミックスの袋数を求める

選手13人、コーチ3人、補助員2人の各人に1袋ずつ渡し、1パック6袋入りのとき必要なパック数を求める。

**取得済み固定GSM8Kの1問。**

- 全員に1袋ずつ必要で、合計人数18人は6で割り切れる。

## trail_people：参加人数

条件：選手13人、コーチ3人、補助員2人。

根拠：

得られること：合計18人。

既習の根拠：中学校までの加法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.trail_people`。

## trail_packs：必要なパック数

条件：18袋を1パック6袋で用意する。

根拠：

得られること：3パック。

既習の根拠：割り切れる整数の除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.trail_packs`。

## trail_exists：条件の充足

条件：18人と3パックを置く。

根拠：

得られること：人数と袋数の条件を満たす。

既習の根拠：等式確認。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908B.trail_exists`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908B.trail_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
