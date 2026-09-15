# 水槽の水量条件を分けて魚数差を検討する

大きさが2対1の水槽で、第一水槽48ガロン、魚1インチ当たり1ガロンの規則から、捕食後の魚数差を検討する。

**取得済み固定GSM8Kの1問。**

- 水槽の大きさの比は実際の水量比を単独では含意しない。同じ充填率なら第2水槽24ガロンという追加条件を置く。

## fish_capacity_second：意図された第2水槽水量

条件：両水槽が同じ充填率で、第1水槽が第2の2倍かつ48ガロン。

根拠：

得られること：第2水槽は24ガロン。

既習の根拠：比例と除法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.fish_capacity_second`。

## fish_intended：追加条件下の魚数差

条件：第2水槽24ガロンに2インチ魚、第1水槽48ガロンに3インチ魚を規則通り置き、第1で1匹減る。

根拠：

得られること：第2は12匹、第1は16匹から15匹となり、差は3匹。

既習の根拠：除法・減法。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.fish_intended`。

## fish_alternative：異なる水量の反例

条件：水槽容量比は保つが、第2水槽の実水量を20ガロンとする。

根拠：

得られること：第2は10匹で、捕食後の第1との差は5匹。

既習の根拠：条件不足を示す反例構成。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.fish_alternative`。

## fish_ambiguity：一意性の否定

条件：原文が第2水槽の実水量または同一充填率を指定しない。

根拠：

得られること：3匹差と5匹差の両モデルがあり、原文だけでは一意に決まらない。

既習の根拠：異なる反例2つによる一意性否定。

この行のLean定理：`LemmaWeave.Tests.GSM8KDaily0908E.fish_ambiguity`。

Leanの最終根：`LemmaWeave.Tests.GSM8KDaily0908E.fish_solution`。各自然言語ステップのレビュー状態：self_review_only。

このページの生成だけでは実行証拠にならない。最新のCIと `reports/method-recipes.json` を併せて確認する。
