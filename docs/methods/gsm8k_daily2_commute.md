# 往路しか示されない通勤時間の一般形と条件付き解

徒歩の往路2時間、自転車の往路1時間。徒歩往復を週3回、自転車往復を週2回。週合計は？

**取得済み固定GSM8Kの1問。LLMが原文から個別に解答し、新規取得件数・日本入試件数へ混ぜない。**

- 原文はto workの所要時間だけを明記し、from workが同じとは明記しない。復路時間を変数にした可能範囲を先に示す。
- 参考解答16時間は復路も同時間という追加条件付き。

## commute_formula：復路を変数にする

条件：徒歩復路wr、自転車復路brはいずれも非負。往路は2時間と1時間。

根拠：

得られること：週合計t=3(2+wr)+2(1+br)=8+3wr+2br。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.commute_formula`。

## commute_lower：原文だけで得られる下限

条件：復路時間wr,brは非負。

根拠：

得られること：t≥8時間。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.commute_lower`。

## commute_symmetric：往復同時間という追加条件

条件：徒歩復路2時間、自転車復路1時間と追加する。

根拠：

得られること：t=3×4+2×2=16時間。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.commute_symmetric`。

## commute_examples：一意でない反例

条件：復路が往路と同じ場合と、徒歩3時間・自転車2時間の場合。

根拠：

得られること：前者16時間、後者21時間で、原文の往路条件にはどちらも反しない。

既習の根拠：中学校までの比例・一次方程式・四則演算。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0907B.commute_examples`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0907B.commute_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
